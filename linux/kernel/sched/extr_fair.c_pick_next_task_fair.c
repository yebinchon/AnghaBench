
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int depth; int group_node; scalar_t__ on_rq; } ;
struct task_struct {struct sched_entity se; int * sched_class; } ;
struct rq_flags {int dummy; } ;
struct cfs_rq {int nr_running; struct sched_entity* curr; } ;
struct rq {int cfs_tasks; struct cfs_rq cfs; } ;


 struct task_struct* RETRY_TASK ;
 int __maybe_unused ;
 struct cfs_rq* cfs_rq_of (struct sched_entity*) ;
 int check_cfs_rq_runtime (struct cfs_rq*) ;
 int fair_sched_class ;
 struct cfs_rq* group_cfs_rq (struct sched_entity*) ;
 scalar_t__ hrtick_enabled (struct rq*) ;
 int hrtick_start_fair (struct rq*,struct task_struct*) ;
 struct cfs_rq* is_same_group (struct sched_entity*,struct sched_entity*) ;
 int list_move (int *,int *) ;
 int newidle_balance (struct rq*,struct rq_flags*) ;
 struct sched_entity* parent_entity (struct sched_entity*) ;
 struct sched_entity* pick_next_entity (struct cfs_rq*,struct sched_entity*) ;
 int put_prev_entity (struct cfs_rq*,struct sched_entity*) ;
 int put_prev_task (struct rq*,struct task_struct*) ;
 int sched_fair_runnable (struct rq*) ;
 int set_next_entity (struct cfs_rq*,struct sched_entity*) ;
 struct task_struct* task_of (struct sched_entity*) ;
 scalar_t__ unlikely (int ) ;
 int update_curr (struct cfs_rq*) ;
 int update_idle_rq_clock_pelt (struct rq*) ;
 int update_misfit_status (struct task_struct*,struct rq*) ;

__attribute__((used)) static struct task_struct *
pick_next_task_fair(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
{
 struct cfs_rq *cfs_rq = &rq->cfs;
 struct sched_entity *se;
 struct task_struct *p;
 int new_tasks;

again:
 if (!sched_fair_runnable(rq))
  goto idle;
 if (prev)
  put_prev_task(rq, prev);

 do {
  se = pick_next_entity(cfs_rq, ((void*)0));
  set_next_entity(cfs_rq, se);
  cfs_rq = group_cfs_rq(se);
 } while (cfs_rq);

 p = task_of(se);

done: __maybe_unused;
 if (hrtick_enabled(rq))
  hrtick_start_fair(rq, p);

 update_misfit_status(p, rq);

 return p;

idle:
 if (!rf)
  return ((void*)0);

 new_tasks = newidle_balance(rq, rf);






 if (new_tasks < 0)
  return RETRY_TASK;

 if (new_tasks > 0)
  goto again;





 update_idle_rq_clock_pelt(rq);

 return ((void*)0);
}
