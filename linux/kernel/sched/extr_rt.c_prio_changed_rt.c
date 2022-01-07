
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int prio; } ;
struct TYPE_3__ {scalar_t__ curr; } ;
struct TYPE_4__ {TYPE_1__ highest_prio; } ;
struct rq {struct task_struct* curr; TYPE_2__ rt; } ;


 int resched_curr (struct rq*) ;
 int rt_queue_pull_task (struct rq*) ;
 int task_on_rq_queued (struct task_struct*) ;

__attribute__((used)) static void
prio_changed_rt(struct rq *rq, struct task_struct *p, int oldprio)
{
 if (!task_on_rq_queued(p))
  return;

 if (rq->curr == p) {
  if (oldprio < p->prio)
   resched_curr(rq);

 } else {





  if (p->prio < rq->curr->prio)
   resched_curr(rq);
 }
}
