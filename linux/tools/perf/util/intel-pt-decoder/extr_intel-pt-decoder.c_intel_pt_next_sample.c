
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct intel_pt_decoder {int period_type; scalar_t__ period_insn_cnt; scalar_t__ period; } ;






 scalar_t__ intel_pt_next_period (struct intel_pt_decoder*) ;

__attribute__((used)) static uint64_t intel_pt_next_sample(struct intel_pt_decoder *decoder)
{
 switch (decoder->period_type) {
 case 131:
  return decoder->period - decoder->period_insn_cnt;
 case 128:
  return intel_pt_next_period(decoder);
 case 129:
 case 130:
 default:
  return 0;
 }
}
