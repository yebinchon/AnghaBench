
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct sched_entity {int vruntime; } ;
struct TYPE_9__ {int min_vruntime; } ;
struct rq {int lock; TYPE_1__ cfs; } ;
struct TYPE_13__ {int runnable_sum; int util_avg; int load_avg; } ;
struct TYPE_11__ {int enqueued; } ;
struct TYPE_12__ {TYPE_3__ util_est; int util_avg; int runnable_load_avg; int load_avg; } ;
struct TYPE_10__ {int weight; } ;
struct cfs_rq {int exec_clock; int min_vruntime; TYPE_6__* tg; int throttle_count; int throttled; int tg_load_avg_contrib; TYPE_5__ removed; TYPE_4__ avg; int runnable_weight; TYPE_2__ load; int nr_running; int nr_spread_over; int tasks_timeline; } ;
typedef int s64 ;
struct TYPE_15__ {int vruntime; } ;
struct TYPE_14__ {int load_avg; } ;


 int SEQ_printf (struct seq_file*,char*,...) ;
 int SPLIT_NS (int) ;
 TYPE_8__* __pick_first_entity (struct cfs_rq*) ;
 struct sched_entity* __pick_last_entity (struct cfs_rq*) ;
 int atomic_long_read (int *) ;
 struct rq* cpu_rq (int) ;
 int print_cfs_group_stats (struct seq_file*,int,TYPE_6__*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ rb_first_cached (int *) ;
 int task_group_path (TYPE_6__*) ;

void print_cfs_rq(struct seq_file *m, int cpu, struct cfs_rq *cfs_rq)
{
 s64 MIN_vruntime = -1, min_vruntime, max_vruntime = -1,
  spread, rq0_min_vruntime, spread0;
 struct rq *rq = cpu_rq(cpu);
 struct sched_entity *last;
 unsigned long flags;





 SEQ_printf(m, "\n");
 SEQ_printf(m, "cfs_rq[%d]:\n", cpu);

 SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "exec_clock",
   SPLIT_NS(cfs_rq->exec_clock));

 raw_spin_lock_irqsave(&rq->lock, flags);
 if (rb_first_cached(&cfs_rq->tasks_timeline))
  MIN_vruntime = (__pick_first_entity(cfs_rq))->vruntime;
 last = __pick_last_entity(cfs_rq);
 if (last)
  max_vruntime = last->vruntime;
 min_vruntime = cfs_rq->min_vruntime;
 rq0_min_vruntime = cpu_rq(0)->cfs.min_vruntime;
 raw_spin_unlock_irqrestore(&rq->lock, flags);
 SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "MIN_vruntime",
   SPLIT_NS(MIN_vruntime));
 SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "min_vruntime",
   SPLIT_NS(min_vruntime));
 SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "max_vruntime",
   SPLIT_NS(max_vruntime));
 spread = max_vruntime - MIN_vruntime;
 SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "spread",
   SPLIT_NS(spread));
 spread0 = min_vruntime - rq0_min_vruntime;
 SEQ_printf(m, "  .%-30s: %Ld.%06ld\n", "spread0",
   SPLIT_NS(spread0));
 SEQ_printf(m, "  .%-30s: %d\n", "nr_spread_over",
   cfs_rq->nr_spread_over);
 SEQ_printf(m, "  .%-30s: %d\n", "nr_running", cfs_rq->nr_running);
 SEQ_printf(m, "  .%-30s: %ld\n", "load", cfs_rq->load.weight);
}
