
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_params {int mtc_period; int tsc_ctc_ratio_n; int tsc_ctc_ratio_d; int max_non_turbo_ratio; int period_type; int period; int flags; int branch_enable; int return_compression; int data; int lookahead; int pgd_ip; scalar_t__ walk_insn; scalar_t__ get_trace; } ;
struct intel_pt_decoder {int mtc_shift; int ctc_rem_mask; int tsc_ctc_ratio_n; int tsc_ctc_ratio_d; int tsc_ctc_mult; int tsc_slip; int max_non_turbo_ratio_fp; int max_non_turbo_ratio; int period_type; int period; int flags; int branch_enable; int return_compression; int data; int lookahead; int pgd_ip; scalar_t__ walk_insn; scalar_t__ get_trace; } ;


 int intel_pt_log (char*,int) ;
 int intel_pt_setup_period (struct intel_pt_decoder*) ;
 struct intel_pt_decoder* zalloc (int) ;

struct intel_pt_decoder *intel_pt_decoder_new(struct intel_pt_params *params)
{
 struct intel_pt_decoder *decoder;

 if (!params->get_trace || !params->walk_insn)
  return ((void*)0);

 decoder = zalloc(sizeof(struct intel_pt_decoder));
 if (!decoder)
  return ((void*)0);

 decoder->get_trace = params->get_trace;
 decoder->walk_insn = params->walk_insn;
 decoder->pgd_ip = params->pgd_ip;
 decoder->lookahead = params->lookahead;
 decoder->data = params->data;
 decoder->return_compression = params->return_compression;
 decoder->branch_enable = params->branch_enable;

 decoder->flags = params->flags;

 decoder->period = params->period;
 decoder->period_type = params->period_type;

 decoder->max_non_turbo_ratio = params->max_non_turbo_ratio;
 decoder->max_non_turbo_ratio_fp = params->max_non_turbo_ratio;

 intel_pt_setup_period(decoder);

 decoder->mtc_shift = params->mtc_period;
 decoder->ctc_rem_mask = (1 << decoder->mtc_shift) - 1;

 decoder->tsc_ctc_ratio_n = params->tsc_ctc_ratio_n;
 decoder->tsc_ctc_ratio_d = params->tsc_ctc_ratio_d;

 if (!decoder->tsc_ctc_ratio_n)
  decoder->tsc_ctc_ratio_d = 0;

 if (decoder->tsc_ctc_ratio_d) {
  if (!(decoder->tsc_ctc_ratio_n % decoder->tsc_ctc_ratio_d))
   decoder->tsc_ctc_mult = decoder->tsc_ctc_ratio_n /
      decoder->tsc_ctc_ratio_d;
 }







 decoder->tsc_slip = 0x10000;

 intel_pt_log("timestamp: mtc_shift %u\n", decoder->mtc_shift);
 intel_pt_log("timestamp: tsc_ctc_ratio_n %u\n", decoder->tsc_ctc_ratio_n);
 intel_pt_log("timestamp: tsc_ctc_ratio_d %u\n", decoder->tsc_ctc_ratio_d);
 intel_pt_log("timestamp: tsc_ctc_mult %u\n", decoder->tsc_ctc_mult);
 intel_pt_log("timestamp: tsc_slip %#x\n", decoder->tsc_slip);

 return decoder;
}
