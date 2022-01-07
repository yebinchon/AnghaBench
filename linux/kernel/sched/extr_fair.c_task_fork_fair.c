
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int vruntime; } ;
struct task_struct {struct sched_entity se; } ;
struct rq_flags {int dummy; } ;
struct rq {int dummy; } ;
struct cfs_rq {scalar_t__ min_vruntime; struct sched_entity* curr; } ;


 int current ;
 scalar_t__ entity_before (struct sched_entity*,struct sched_entity*) ;
 int place_entity (struct cfs_rq*,struct sched_entity*,int) ;
 int resched_curr (struct rq*) ;
 int rq_lock (struct rq*,struct rq_flags*) ;
 int rq_unlock (struct rq*,struct rq_flags*) ;
 int swap (int ,int ) ;
 scalar_t__ sysctl_sched_child_runs_first ;
 struct cfs_rq* task_cfs_rq (int ) ;
 struct rq* this_rq () ;
 int update_curr (struct cfs_rq*) ;
 int update_rq_clock (struct rq*) ;

__attribute__((used)) static void task_fork_fair(struct task_struct *p)
{
 struct cfs_rq *cfs_rq;
 struct sched_entity *se = &p->se, *curr;
 struct rq *rq = this_rq();
 struct rq_flags rf;

 rq_lock(rq, &rf);
 update_rq_clock(rq);

 cfs_rq = task_cfs_rq(current);
 curr = cfs_rq->curr;
 if (curr) {
  update_curr(cfs_rq);
  se->vruntime = curr->vruntime;
 }
 place_entity(cfs_rq, se, 1);

 if (sysctl_sched_child_runs_first && curr && entity_before(curr, se)) {




  swap(curr->vruntime, se->vruntime);
  resched_curr(rq);
 }

 se->vruntime -= cfs_rq->min_vruntime;
 rq_unlock(rq, &rf);
}
