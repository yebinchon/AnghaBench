
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct cs_etm_traceid_queue {int period_instructions; TYPE_3__* prev_packet; } ;
struct cs_etm_queue {TYPE_2__* etm; } ;
struct TYPE_6__ {scalar_t__ sample_type; } ;
struct TYPE_4__ {scalar_t__ last_branch; } ;
struct TYPE_5__ {TYPE_1__ synth_opts; } ;


 scalar_t__ CS_ETM_RANGE ;
 int cs_etm__last_executed_instr (TYPE_3__*) ;
 int cs_etm__synth_instruction_sample (struct cs_etm_queue*,struct cs_etm_traceid_queue*,int ,int ) ;

__attribute__((used)) static int cs_etm__end_block(struct cs_etm_queue *etmq,
        struct cs_etm_traceid_queue *tidq)
{
 int err;
 if (etmq->etm->synth_opts.last_branch &&
     tidq->prev_packet->sample_type == CS_ETM_RANGE) {




  u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);

  err = cs_etm__synth_instruction_sample(
   etmq, tidq, addr,
   tidq->period_instructions);
  if (err)
   return err;

  tidq->period_instructions = 0;
 }

 return 0;
}
