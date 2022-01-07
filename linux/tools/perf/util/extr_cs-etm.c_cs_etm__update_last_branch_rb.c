
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cs_etm_traceid_queue {int last_branch_pos; int packet; int prev_packet; struct branch_stack* last_branch_rb; } ;
struct cs_etm_queue {TYPE_3__* etm; } ;
struct branch_stack {scalar_t__ nr; struct branch_entry* entries; } ;
struct TYPE_4__ {int predicted; scalar_t__ mispred; } ;
struct branch_entry {TYPE_1__ flags; int to; int from; } ;
struct TYPE_5__ {int last_branch_sz; } ;
struct TYPE_6__ {TYPE_2__ synth_opts; } ;


 int cs_etm__first_executed_instr (int ) ;
 int cs_etm__last_executed_instr (int ) ;

__attribute__((used)) static void cs_etm__update_last_branch_rb(struct cs_etm_queue *etmq,
       struct cs_etm_traceid_queue *tidq)
{
 struct branch_stack *bs = tidq->last_branch_rb;
 struct branch_entry *be;







 if (!tidq->last_branch_pos)
  tidq->last_branch_pos = etmq->etm->synth_opts.last_branch_sz;

 tidq->last_branch_pos -= 1;

 be = &bs->entries[tidq->last_branch_pos];
 be->from = cs_etm__last_executed_instr(tidq->prev_packet);
 be->to = cs_etm__first_executed_instr(tidq->packet);

 be->flags.mispred = 0;
 be->flags.predicted = 1;





 if (bs->nr < etmq->etm->synth_opts.last_branch_sz)
  bs->nr += 1;
}
