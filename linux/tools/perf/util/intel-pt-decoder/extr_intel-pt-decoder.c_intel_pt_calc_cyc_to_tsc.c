
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int fixup_last_mtc; int have_tma; int timestamp; int tsc_timestamp; int ctc_delta; int ctc_timestamp; int last_mtc; } ;
struct intel_pt_calc_cyc_to_tsc_info {int from_mtc; int cbr_cyc_to_tsc; int fixup_last_mtc; int have_tma; int timestamp; int tsc_timestamp; int ctc_delta; int ctc_timestamp; int last_mtc; int cbr; int cycle_cnt; } ;


 int intel_pt_calc_cyc_cb ;
 int intel_pt_pkt_lookahead (struct intel_pt_decoder*,int ,struct intel_pt_calc_cyc_to_tsc_info*) ;

__attribute__((used)) static void intel_pt_calc_cyc_to_tsc(struct intel_pt_decoder *decoder,
         bool from_mtc)
{
 struct intel_pt_calc_cyc_to_tsc_info data = {
  .cycle_cnt = 0,
  .cbr = 0,
  .last_mtc = decoder->last_mtc,
  .ctc_timestamp = decoder->ctc_timestamp,
  .ctc_delta = decoder->ctc_delta,
  .tsc_timestamp = decoder->tsc_timestamp,
  .timestamp = decoder->timestamp,
  .have_tma = decoder->have_tma,
  .fixup_last_mtc = decoder->fixup_last_mtc,
  .from_mtc = from_mtc,
  .cbr_cyc_to_tsc = 0,
 };






 if (!from_mtc)
  return;

 intel_pt_pkt_lookahead(decoder, intel_pt_calc_cyc_cb, &data);
}
