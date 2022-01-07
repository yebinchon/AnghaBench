
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int payload; } ;
struct intel_pt_decoder {int cbr_payload; unsigned int cbr; unsigned int cbr_cyc_to_tsc; unsigned int max_non_turbo_ratio_fp; TYPE_1__ packet; } ;


 int intel_pt_mtc_cyc_cnt_cbr (struct intel_pt_decoder*) ;

__attribute__((used)) static void intel_pt_calc_cbr(struct intel_pt_decoder *decoder)
{
 unsigned int cbr = decoder->packet.payload & 0xff;

 decoder->cbr_payload = decoder->packet.payload;

 if (decoder->cbr == cbr)
  return;

 decoder->cbr = cbr;
 decoder->cbr_cyc_to_tsc = decoder->max_non_turbo_ratio_fp / cbr;

 intel_pt_mtc_cyc_cnt_cbr(decoder);
}
