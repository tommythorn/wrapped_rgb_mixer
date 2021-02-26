always @(*) begin
    if (active) begin
       // active properties here
       assert(wbs_ack_o  == buf_wbs_ack_o);
       assert(wbs_dat_o  == buf_wbs_dat_o);
       assert(la_data_out== buf_la_data_out);
       assert(io_out     == buf_io_out);
       assert(io_oeb     == buf_io_oeb);
    end
    if (!active) begin
       // inactive properties here
       assert(wbs_ack_o  == 0);
       assert(wbs_dat_o  == 0);
       assert(la_data_out== 0);
       assert(io_out     == 0);
       assert(io_oeb     == 0);
    end
end
