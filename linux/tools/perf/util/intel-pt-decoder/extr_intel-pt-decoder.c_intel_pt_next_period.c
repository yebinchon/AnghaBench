
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct intel_pt_decoder {int timestamp; int timestamp_insn_cnt; int period_mask; int continuous_period; int last_masked_timestamp; int period_ticks; } ;



__attribute__((used)) static uint64_t intel_pt_next_period(struct intel_pt_decoder *decoder)
{
 uint64_t timestamp, masked_timestamp;

 timestamp = decoder->timestamp + decoder->timestamp_insn_cnt;
 masked_timestamp = timestamp & decoder->period_mask;
 if (decoder->continuous_period) {
  if (masked_timestamp > decoder->last_masked_timestamp)
   return 1;
 } else {
  timestamp += 1;
  masked_timestamp = timestamp & decoder->period_mask;
  if (masked_timestamp > decoder->last_masked_timestamp) {
   decoder->last_masked_timestamp = masked_timestamp;
   decoder->continuous_period = 1;
  }
 }

 if (masked_timestamp < decoder->last_masked_timestamp)
  return decoder->period_ticks;

 return decoder->period_ticks - (timestamp - masked_timestamp);
}
