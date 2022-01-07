
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_dl_entity {int dl_throttled; scalar_t__ runtime; scalar_t__ dl_boosted; int deadline; } ;
struct rq {int dummy; } ;


 int dl_next_period (struct sched_dl_entity*) ;
 int dl_rq_of_se (struct sched_dl_entity*) ;
 struct task_struct* dl_task_of (struct sched_dl_entity*) ;
 scalar_t__ dl_time_before (int ,int ) ;
 int rq_clock (struct rq*) ;
 struct rq* rq_of_dl_rq (int ) ;
 int start_dl_timer (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void dl_check_constrained_dl(struct sched_dl_entity *dl_se)
{
 struct task_struct *p = dl_task_of(dl_se);
 struct rq *rq = rq_of_dl_rq(dl_rq_of_se(dl_se));

 if (dl_time_before(dl_se->deadline, rq_clock(rq)) &&
     dl_time_before(rq_clock(rq), dl_next_period(dl_se))) {
  if (unlikely(dl_se->dl_boosted || !start_dl_timer(p)))
   return;
  dl_se->dl_throttled = 1;
  if (dl_se->runtime > 0)
   dl_se->runtime = 0;
 }
}
