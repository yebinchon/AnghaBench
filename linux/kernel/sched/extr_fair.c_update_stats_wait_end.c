
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int wait_start; int wait_sum; int wait_count; int wait_max; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {int dummy; } ;


 int __schedstat_add (int ,scalar_t__) ;
 int __schedstat_inc (int ) ;
 int __schedstat_set (int ,scalar_t__) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ rq_clock (int ) ;
 int rq_of (struct cfs_rq*) ;
 int schedstat_enabled () ;
 scalar_t__ schedstat_val (int ) ;
 struct task_struct* task_of (struct sched_entity*) ;
 scalar_t__ task_on_rq_migrating (struct task_struct*) ;
 int trace_sched_stat_wait (struct task_struct*,scalar_t__) ;

__attribute__((used)) static inline void
update_stats_wait_end(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 struct task_struct *p;
 u64 delta;

 if (!schedstat_enabled())
  return;

 delta = rq_clock(rq_of(cfs_rq)) - schedstat_val(se->statistics.wait_start);

 if (entity_is_task(se)) {
  p = task_of(se);
  if (task_on_rq_migrating(p)) {





   __schedstat_set(se->statistics.wait_start, delta);
   return;
  }
  trace_sched_stat_wait(p, delta);
 }

 __schedstat_set(se->statistics.wait_max,
        max(schedstat_val(se->statistics.wait_max), delta));
 __schedstat_inc(se->statistics.wait_count);
 __schedstat_add(se->statistics.wait_sum, delta);
 __schedstat_set(se->statistics.wait_start, 0);
}
