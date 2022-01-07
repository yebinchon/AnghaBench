
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {unsigned long sum_exec_runtime; unsigned long prev_sum_exec_runtime; unsigned long vruntime; } ;
struct cfs_rq {int dummy; } ;
typedef unsigned long s64 ;


 struct sched_entity* __pick_first_entity (struct cfs_rq*) ;
 int clear_buddies (struct cfs_rq*,struct sched_entity*) ;
 int resched_curr (int ) ;
 int rq_of (struct cfs_rq*) ;
 unsigned long sched_slice (struct cfs_rq*,struct sched_entity*) ;
 unsigned long sysctl_sched_min_granularity ;

__attribute__((used)) static void
check_preempt_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr)
{
 unsigned long ideal_runtime, delta_exec;
 struct sched_entity *se;
 s64 delta;

 ideal_runtime = sched_slice(cfs_rq, curr);
 delta_exec = curr->sum_exec_runtime - curr->prev_sum_exec_runtime;
 if (delta_exec > ideal_runtime) {
  resched_curr(rq_of(cfs_rq));




  clear_buddies(cfs_rq, curr);
  return;
 }






 if (delta_exec < sysctl_sched_min_granularity)
  return;

 se = __pick_first_entity(cfs_rq);
 delta = curr->vruntime - se->vruntime;

 if (delta < 0)
  return;

 if (delta > ideal_runtime)
  resched_curr(rq_of(cfs_rq));
}
