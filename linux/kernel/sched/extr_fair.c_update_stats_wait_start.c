
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {int wait_start; } ;
struct sched_entity {TYPE_1__ statistics; } ;
struct cfs_rq {int dummy; } ;


 int __schedstat_set (int ,scalar_t__) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 scalar_t__ likely (int) ;
 scalar_t__ rq_clock (int ) ;
 int rq_of (struct cfs_rq*) ;
 int schedstat_enabled () ;
 scalar_t__ schedstat_val (int ) ;
 int task_of (struct sched_entity*) ;
 scalar_t__ task_on_rq_migrating (int ) ;

__attribute__((used)) static inline void
update_stats_wait_start(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 u64 wait_start, prev_wait_start;

 if (!schedstat_enabled())
  return;

 wait_start = rq_clock(rq_of(cfs_rq));
 prev_wait_start = schedstat_val(se->statistics.wait_start);

 if (entity_is_task(se) && task_on_rq_migrating(task_of(se)) &&
     likely(wait_start > prev_wait_start))
  wait_start -= prev_wait_start;

 __schedstat_set(se->statistics.wait_start, wait_start);
}
