
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct cs_etm_traceid_queue {scalar_t__ period_instructions; struct cs_etm_packet* prev_packet; struct cs_etm_packet* packet; int trace_chan_id; } ;
struct cs_etm_queue {struct cs_etm_auxtrace* etm; } ;
struct cs_etm_packet {scalar_t__ instr_count; scalar_t__ sample_type; scalar_t__ last_instr_taken_branch; } ;
struct TYPE_2__ {scalar_t__ last_branch; } ;
struct cs_etm_auxtrace {scalar_t__ instructions_sample_period; TYPE_1__ synth_opts; scalar_t__ sample_branches; scalar_t__ sample_instructions; } ;


 scalar_t__ CS_ETM_DISCONTINUITY ;
 scalar_t__ CS_ETM_RANGE ;
 scalar_t__ cs_etm__instr_addr (struct cs_etm_queue*,int ,struct cs_etm_packet*,scalar_t__) ;
 int cs_etm__synth_branch_sample (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;
 int cs_etm__synth_instruction_sample (struct cs_etm_queue*,struct cs_etm_traceid_queue*,scalar_t__,scalar_t__) ;
 int cs_etm__update_last_branch_rb (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ;

__attribute__((used)) static int cs_etm__sample(struct cs_etm_queue *etmq,
     struct cs_etm_traceid_queue *tidq)
{
 struct cs_etm_auxtrace *etm = etmq->etm;
 struct cs_etm_packet *tmp;
 int ret;
 u8 trace_chan_id = tidq->trace_chan_id;
 u64 instrs_executed = tidq->packet->instr_count;

 tidq->period_instructions += instrs_executed;





 if (etm->synth_opts.last_branch &&
     tidq->prev_packet->sample_type == CS_ETM_RANGE &&
     tidq->prev_packet->last_instr_taken_branch)
  cs_etm__update_last_branch_rb(etmq, tidq);

 if (etm->sample_instructions &&
     tidq->period_instructions >= etm->instructions_sample_period) {






  u64 instrs_over = tidq->period_instructions -
   etm->instructions_sample_period;






  u64 offset = (instrs_executed - instrs_over - 1);
  u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
           tidq->packet, offset);

  ret = cs_etm__synth_instruction_sample(
   etmq, tidq, addr, etm->instructions_sample_period);
  if (ret)
   return ret;


  tidq->period_instructions = instrs_over;
 }

 if (etm->sample_branches) {
  bool generate_sample = 0;


  if (tidq->prev_packet->sample_type == CS_ETM_DISCONTINUITY)
   generate_sample = 1;


  if (tidq->prev_packet->sample_type == CS_ETM_RANGE &&
      tidq->prev_packet->last_instr_taken_branch)
   generate_sample = 1;

  if (generate_sample) {
   ret = cs_etm__synth_branch_sample(etmq, tidq);
   if (ret)
    return ret;
  }
 }

 if (etm->sample_branches || etm->synth_opts.last_branch) {




  tmp = tidq->packet;
  tidq->packet = tidq->prev_packet;
  tidq->prev_packet = tmp;
 }

 return 0;
}
