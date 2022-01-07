
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_pt_decoder {int timestamp_insn_cnt; int sample_insn_cnt; int timestamp; int sample_timestamp; } ;



__attribute__((used)) static inline void intel_pt_update_sample_time(struct intel_pt_decoder *decoder)
{
 decoder->sample_timestamp = decoder->timestamp;
 decoder->sample_insn_cnt = decoder->timestamp_insn_cnt;
}
