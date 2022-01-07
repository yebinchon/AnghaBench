
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_decoder {scalar_t__ period_type; int period_mask; int period_ticks; int period; } ;


 scalar_t__ INTEL_PT_PERIOD_TICKS ;
 int intel_pt_lower_power_of_2 (int ) ;

__attribute__((used)) static void intel_pt_setup_period(struct intel_pt_decoder *decoder)
{
 if (decoder->period_type == INTEL_PT_PERIOD_TICKS) {
  uint64_t period;

  period = intel_pt_lower_power_of_2(decoder->period);
  decoder->period_mask = ~(period - 1);
  decoder->period_ticks = period;
 }
}
