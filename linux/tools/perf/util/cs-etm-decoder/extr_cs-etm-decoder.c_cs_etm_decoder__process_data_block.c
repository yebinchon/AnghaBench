
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct cs_etm_decoder {int prev_return; int dcd_tree; } ;
typedef int ocsd_datapath_resp_t ;


 int EINVAL ;
 scalar_t__ OCSD_DATA_RESP_IS_CONT (int ) ;
 scalar_t__ OCSD_DATA_RESP_IS_WAIT (int ) ;
 int OCSD_OP_DATA ;
 int OCSD_OP_FLUSH ;
 int OCSD_RESP_CONT ;
 int ocsd_dt_process_data (int ,int ,scalar_t__,size_t,int const*,scalar_t__*) ;

int cs_etm_decoder__process_data_block(struct cs_etm_decoder *decoder,
           u64 indx, const u8 *buf,
           size_t len, size_t *consumed)
{
 int ret = 0;
 ocsd_datapath_resp_t cur = OCSD_RESP_CONT;
 ocsd_datapath_resp_t prev_return = decoder->prev_return;
 size_t processed = 0;
 u32 count;

 while (processed < len) {
  if (OCSD_DATA_RESP_IS_WAIT(prev_return)) {
   cur = ocsd_dt_process_data(decoder->dcd_tree,
         OCSD_OP_FLUSH,
         0,
         0,
         ((void*)0),
         ((void*)0));
  } else if (OCSD_DATA_RESP_IS_CONT(prev_return)) {
   cur = ocsd_dt_process_data(decoder->dcd_tree,
         OCSD_OP_DATA,
         indx + processed,
         len - processed,
         &buf[processed],
         &count);
   processed += count;
  } else {
   ret = -EINVAL;
   break;
  }






  if (OCSD_DATA_RESP_IS_WAIT(cur))
   break;

  prev_return = cur;
 }

 decoder->prev_return = cur;
 *consumed = processed;

 return ret;
}
