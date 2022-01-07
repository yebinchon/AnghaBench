
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cs_etm_decoder {int dcd_tree; int mem_access; } ;
typedef int cs_etm_mem_cb_type ;


 int OCSD_MEM_SPACE_ANY ;
 int cs_etm_decoder__mem_access ;
 scalar_t__ ocsd_dt_add_callback_trcid_mem_acc (int ,int ,int ,int ,int ,struct cs_etm_decoder*) ;

int cs_etm_decoder__add_mem_access_cb(struct cs_etm_decoder *decoder,
          u64 start, u64 end,
          cs_etm_mem_cb_type cb_func)
{
 decoder->mem_access = cb_func;

 if (ocsd_dt_add_callback_trcid_mem_acc(decoder->dcd_tree, start, end,
            OCSD_MEM_SPACE_ANY,
            cs_etm_decoder__mem_access,
            decoder))
  return -1;

 return 0;
}
