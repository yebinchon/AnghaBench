
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int tot_cyc_cnt; int base_cyc_cnt; int timestamp; int cyc_cnt_timestamp; scalar_t__ have_cyc; } ;



__attribute__((used)) static inline void intel_pt_mtc_cyc_cnt_pge(struct intel_pt_decoder *decoder)
{
 if (decoder->have_cyc)
  return;

 decoder->cyc_cnt_timestamp = decoder->timestamp;
 decoder->base_cyc_cnt = decoder->tot_cyc_cnt;
}
