
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_etm_decoder {int dcd_tree; int prev_return; } ;
typedef int ocsd_datapath_resp_t ;


 scalar_t__ OCSD_DATA_RESP_IS_FATAL (int ) ;
 int OCSD_OP_RESET ;
 int OCSD_RESP_CONT ;
 int ocsd_dt_process_data (int ,int ,int ,int ,int *,int *) ;

int cs_etm_decoder__reset(struct cs_etm_decoder *decoder)
{
 ocsd_datapath_resp_t dp_ret;

 decoder->prev_return = OCSD_RESP_CONT;

 dp_ret = ocsd_dt_process_data(decoder->dcd_tree, OCSD_OP_RESET,
          0, 0, ((void*)0), ((void*)0));
 if (OCSD_DATA_RESP_IS_FATAL(dp_ret))
  return -1;

 return 0;
}
