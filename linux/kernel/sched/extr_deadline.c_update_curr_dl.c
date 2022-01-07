
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sched_dl_entity {int dl_yielded; int flags; int dl_throttled; int dl_overrun; scalar_t__ dl_boosted; int runtime; } ;
struct TYPE_3__ {int exec_max; } ;
struct TYPE_4__ {scalar_t__ exec_start; int sum_exec_runtime; TYPE_1__ statistics; } ;
struct task_struct {struct sched_dl_entity dl; TYPE_2__ se; } ;
struct rt_rq {int rt_runtime_lock; int rt_time; } ;
struct rq {struct rt_rq rt; int dl; struct task_struct* curr; } ;
typedef scalar_t__ s64 ;


 int ENQUEUE_REPLENISH ;
 int SCHED_FLAG_DL_OVERRUN ;
 int SCHED_FLAG_RECLAIM ;
 int __dequeue_task_dl (struct rq*,struct task_struct*,int ) ;
 int account_group_exec_runtime (struct task_struct*,scalar_t__) ;
 unsigned long arch_scale_cpu_capacity (int) ;
 unsigned long arch_scale_freq_capacity (int) ;
 scalar_t__ cap_scale (scalar_t__,unsigned long) ;
 int cgroup_account_cputime (struct task_struct*,scalar_t__) ;
 int cpu_of (struct rq*) ;
 scalar_t__ dl_entity_is_special (struct sched_dl_entity*) ;
 scalar_t__ dl_runtime_exceeded (struct sched_dl_entity*) ;
 int dl_task (struct task_struct*) ;
 int enqueue_task_dl (struct rq*,struct task_struct*,int ) ;
 scalar_t__ grub_reclaim (scalar_t__,struct rq*,struct sched_dl_entity*) ;
 int is_leftmost (struct task_struct*,int *) ;
 int max (int ,scalar_t__) ;
 int on_dl_rq (struct sched_dl_entity*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int resched_curr (struct rq*) ;
 scalar_t__ rq_clock_task (struct rq*) ;
 scalar_t__ rt_bandwidth_enabled () ;
 scalar_t__ sched_rt_bandwidth_account (struct rt_rq*) ;
 int schedstat_set (int ,int ) ;
 int start_dl_timer (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void update_curr_dl(struct rq *rq)
{
 struct task_struct *curr = rq->curr;
 struct sched_dl_entity *dl_se = &curr->dl;
 u64 delta_exec, scaled_delta_exec;
 int cpu = cpu_of(rq);
 u64 now;

 if (!dl_task(curr) || !on_dl_rq(dl_se))
  return;
 now = rq_clock_task(rq);
 delta_exec = now - curr->se.exec_start;
 if (unlikely((s64)delta_exec <= 0)) {
  if (unlikely(dl_se->dl_yielded))
   goto throttle;
  return;
 }

 schedstat_set(curr->se.statistics.exec_max,
        max(curr->se.statistics.exec_max, delta_exec));

 curr->se.sum_exec_runtime += delta_exec;
 account_group_exec_runtime(curr, delta_exec);

 curr->se.exec_start = now;
 cgroup_account_cputime(curr, delta_exec);

 if (dl_entity_is_special(dl_se))
  return;
 if (unlikely(dl_se->flags & SCHED_FLAG_RECLAIM)) {
  scaled_delta_exec = grub_reclaim(delta_exec,
       rq,
       &curr->dl);
 } else {
  unsigned long scale_freq = arch_scale_freq_capacity(cpu);
  unsigned long scale_cpu = arch_scale_cpu_capacity(cpu);

  scaled_delta_exec = cap_scale(delta_exec, scale_freq);
  scaled_delta_exec = cap_scale(scaled_delta_exec, scale_cpu);
 }

 dl_se->runtime -= scaled_delta_exec;

throttle:
 if (dl_runtime_exceeded(dl_se) || dl_se->dl_yielded) {
  dl_se->dl_throttled = 1;


  if (dl_runtime_exceeded(dl_se) &&
      (dl_se->flags & SCHED_FLAG_DL_OVERRUN))
   dl_se->dl_overrun = 1;

  __dequeue_task_dl(rq, curr, 0);
  if (unlikely(dl_se->dl_boosted || !start_dl_timer(curr)))
   enqueue_task_dl(rq, curr, ENQUEUE_REPLENISH);

  if (!is_leftmost(curr, &rq->dl))
   resched_curr(rq);
 }
 if (rt_bandwidth_enabled()) {
  struct rt_rq *rt_rq = &rq->rt;

  raw_spin_lock(&rt_rq->rt_runtime_lock);





  if (sched_rt_bandwidth_account(rt_rq))
   rt_rq->rt_time += delta_exec;
  raw_spin_unlock(&rt_rq->rt_runtime_lock);
 }
}
