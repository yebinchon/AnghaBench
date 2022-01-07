
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int state; } ;
struct TYPE_2__ {int block_start; int sleep_start; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {struct sched_entity* curr; } ;


 int DEQUEUE_SLEEP ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int __schedstat_set (int ,int ) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 int rq_clock (int ) ;
 int rq_of (struct cfs_rq*) ;
 int schedstat_enabled () ;
 struct task_struct* task_of (struct sched_entity*) ;
 int update_stats_wait_end (struct cfs_rq*,struct sched_entity*) ;

__attribute__((used)) static inline void
update_stats_dequeue(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{

 if (!schedstat_enabled())
  return;





 if (se != cfs_rq->curr)
  update_stats_wait_end(cfs_rq, se);

 if ((flags & DEQUEUE_SLEEP) && entity_is_task(se)) {
  struct task_struct *tsk = task_of(se);

  if (tsk->state & TASK_INTERRUPTIBLE)
   __schedstat_set(se->statistics.sleep_start,
          rq_clock(rq_of(cfs_rq)));
  if (tsk->state & TASK_UNINTERRUPTIBLE)
   __schedstat_set(se->statistics.block_start,
          rq_clock(rq_of(cfs_rq)));
 }
}
