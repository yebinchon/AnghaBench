
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {scalar_t__ in_iowait; } ;
struct TYPE_2__ {int iowait_count; int iowait_sum; int sum_sleep_runtime; int block_start; int block_max; int sleep_start; int sleep_max; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {int dummy; } ;
typedef scalar_t__ s64 ;


 scalar_t__ SLEEP_PROFILING ;
 int __schedstat_add (int ,int) ;
 int __schedstat_inc (int ) ;
 int __schedstat_set (int ,int) ;
 int account_scheduler_latency (struct task_struct*,int,int) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 scalar_t__ get_wchan (struct task_struct*) ;
 scalar_t__ prof_on ;
 int profile_hits (scalar_t__,void*,int) ;
 int rq_clock (int ) ;
 int rq_of (struct cfs_rq*) ;
 int schedstat_enabled () ;
 int schedstat_val (int ) ;
 struct task_struct* task_of (struct sched_entity*) ;
 int trace_sched_stat_blocked (struct task_struct*,int) ;
 int trace_sched_stat_iowait (struct task_struct*,int) ;
 int trace_sched_stat_sleep (struct task_struct*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void
update_stats_enqueue_sleeper(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 struct task_struct *tsk = ((void*)0);
 u64 sleep_start, block_start;

 if (!schedstat_enabled())
  return;

 sleep_start = schedstat_val(se->statistics.sleep_start);
 block_start = schedstat_val(se->statistics.block_start);

 if (entity_is_task(se))
  tsk = task_of(se);

 if (sleep_start) {
  u64 delta = rq_clock(rq_of(cfs_rq)) - sleep_start;

  if ((s64)delta < 0)
   delta = 0;

  if (unlikely(delta > schedstat_val(se->statistics.sleep_max)))
   __schedstat_set(se->statistics.sleep_max, delta);

  __schedstat_set(se->statistics.sleep_start, 0);
  __schedstat_add(se->statistics.sum_sleep_runtime, delta);

  if (tsk) {
   account_scheduler_latency(tsk, delta >> 10, 1);
   trace_sched_stat_sleep(tsk, delta);
  }
 }
 if (block_start) {
  u64 delta = rq_clock(rq_of(cfs_rq)) - block_start;

  if ((s64)delta < 0)
   delta = 0;

  if (unlikely(delta > schedstat_val(se->statistics.block_max)))
   __schedstat_set(se->statistics.block_max, delta);

  __schedstat_set(se->statistics.block_start, 0);
  __schedstat_add(se->statistics.sum_sleep_runtime, delta);

  if (tsk) {
   if (tsk->in_iowait) {
    __schedstat_add(se->statistics.iowait_sum, delta);
    __schedstat_inc(se->statistics.iowait_count);
    trace_sched_stat_iowait(tsk, delta);
   }

   trace_sched_stat_blocked(tsk, delta);






   if (unlikely(prof_on == SLEEP_PROFILING)) {
    profile_hits(SLEEP_PROFILING,
      (void *)get_wchan(tsk),
      delta >> 20);
   }
   account_scheduler_latency(tsk, delta >> 10, 0);
  }
 }
}
