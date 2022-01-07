
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {struct task_struct* curr; } ;


 int attach_task_cfs_rq (struct task_struct*) ;
 int check_preempt_curr (struct rq*,struct task_struct*,int ) ;
 int resched_curr (struct rq*) ;
 scalar_t__ task_on_rq_queued (struct task_struct*) ;

__attribute__((used)) static void switched_to_fair(struct rq *rq, struct task_struct *p)
{
 attach_task_cfs_rq(p);

 if (task_on_rq_queued(p)) {





  if (rq->curr == p)
   resched_curr(rq);
  else
   check_preempt_curr(rq, p, 0);
 }
}
