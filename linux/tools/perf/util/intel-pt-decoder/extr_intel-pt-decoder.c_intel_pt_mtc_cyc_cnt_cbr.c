
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int tsc_to_cyc; int cbr; int max_non_turbo_ratio_fp; scalar_t__ pge; } ;


 int intel_pt_mtc_cyc_cnt_pge (struct intel_pt_decoder*) ;

__attribute__((used)) static inline void intel_pt_mtc_cyc_cnt_cbr(struct intel_pt_decoder *decoder)
{
 decoder->tsc_to_cyc = decoder->cbr / decoder->max_non_turbo_ratio_fp;

 if (decoder->pge)
  intel_pt_mtc_cyc_cnt_pge(decoder);
}
