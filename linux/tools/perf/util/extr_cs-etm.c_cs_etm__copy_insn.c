
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_sample {int insn_len; scalar_t__ insn; int ip; } ;
struct cs_etm_queue {int dummy; } ;
struct cs_etm_packet {scalar_t__ sample_type; scalar_t__ isa; } ;


 scalar_t__ CS_ETM_DISCONTINUITY ;
 scalar_t__ CS_ETM_ISA_T32 ;
 int cs_etm__mem_access (struct cs_etm_queue*,int ,int ,int,void*) ;
 int cs_etm__t32_instr_size (struct cs_etm_queue*,int ,int ) ;

__attribute__((used)) static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
         u64 trace_chan_id,
         const struct cs_etm_packet *packet,
         struct perf_sample *sample)
{




 if (packet->sample_type == CS_ETM_DISCONTINUITY) {
  sample->insn_len = 0;
  return;
 }





 if (packet->isa == CS_ETM_ISA_T32)
  sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
         sample->ip);

 else
  sample->insn_len = 4;

 cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
      sample->insn_len, (void *)sample->insn);
}
