
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_dl_entity {scalar_t__ dl_throttled; scalar_t__ dl_boosted; } ;
struct task_struct {scalar_t__ on_rq; int nr_cpus_allowed; struct sched_dl_entity dl; int normal_prio; } ;
struct rq {int dl; } ;


 int BUG_ON (int) ;
 int ENQUEUE_REPLENISH ;
 int ENQUEUE_RESTORE ;
 int ENQUEUE_WAKEUP ;
 scalar_t__ TASK_ON_RQ_MIGRATING ;
 int add_rq_bw (struct sched_dl_entity*,int *) ;
 int add_running_bw (struct sched_dl_entity*,int *) ;
 int dl_check_constrained_dl (struct sched_dl_entity*) ;
 int dl_is_implicit (struct sched_dl_entity*) ;
 scalar_t__ dl_prio (int ) ;
 int enqueue_dl_entity (struct sched_dl_entity*,struct sched_dl_entity*,int) ;
 int enqueue_pushable_dl_task (struct rq*,struct task_struct*) ;
 struct task_struct* rt_mutex_get_top_task (struct task_struct*) ;
 int task_contending (struct sched_dl_entity*,int) ;
 int task_current (struct rq*,struct task_struct*) ;

__attribute__((used)) static void enqueue_task_dl(struct rq *rq, struct task_struct *p, int flags)
{
 struct task_struct *pi_task = rt_mutex_get_top_task(p);
 struct sched_dl_entity *pi_se = &p->dl;
 if (pi_task && dl_prio(pi_task->normal_prio) && p->dl.dl_boosted) {
  pi_se = &pi_task->dl;
 } else if (!dl_prio(p->normal_prio)) {







  BUG_ON(!p->dl.dl_boosted || flags != ENQUEUE_REPLENISH);
  return;
 }







 if (!p->dl.dl_throttled && !dl_is_implicit(&p->dl))
  dl_check_constrained_dl(&p->dl);

 if (p->on_rq == TASK_ON_RQ_MIGRATING || flags & ENQUEUE_RESTORE) {
  add_rq_bw(&p->dl, &rq->dl);
  add_running_bw(&p->dl, &rq->dl);
 }
 if (p->dl.dl_throttled && !(flags & ENQUEUE_REPLENISH)) {
  if (flags & ENQUEUE_WAKEUP)
   task_contending(&p->dl, flags);

  return;
 }

 enqueue_dl_entity(&p->dl, pi_se, flags);

 if (!task_current(rq, p) && p->nr_cpus_allowed > 1)
  enqueue_pushable_dl_task(rq, p);
}
