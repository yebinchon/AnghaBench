
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int type; } ;
struct intel_pt_decoder {int period_type; int timestamp; int timestamp_insn_cnt; int period_mask; int last_masked_timestamp; int period_ticks; TYPE_1__ state; int period_insn_cnt; } ;


 int INTEL_PT_INSTRUCTION ;





__attribute__((used)) static void intel_pt_sample_insn(struct intel_pt_decoder *decoder)
{
 uint64_t timestamp, masked_timestamp;

 switch (decoder->period_type) {
 case 131:
  decoder->period_insn_cnt = 0;
  break;
 case 128:
  timestamp = decoder->timestamp + decoder->timestamp_insn_cnt;
  masked_timestamp = timestamp & decoder->period_mask;
  if (masked_timestamp > decoder->last_masked_timestamp)
   decoder->last_masked_timestamp = masked_timestamp;
  else
   decoder->last_masked_timestamp += decoder->period_ticks;
  break;
 case 129:
 case 130:
 default:
  break;
 }

 decoder->state.type |= INTEL_PT_INSTRUCTION;
}
