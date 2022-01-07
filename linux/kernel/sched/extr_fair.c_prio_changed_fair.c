
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int prio; } ;
struct rq {struct task_struct* curr; } ;


 int check_preempt_curr (struct rq*,struct task_struct*,int ) ;
 int resched_curr (struct rq*) ;
 int task_on_rq_queued (struct task_struct*) ;

__attribute__((used)) static void
prio_changed_fair(struct rq *rq, struct task_struct *p, int oldprio)
{
 if (!task_on_rq_queued(p))
  return;






 if (rq->curr == p) {
  if (p->prio > oldprio)
   resched_curr(rq);
 } else
  check_preempt_curr(rq, p, 0);
}
