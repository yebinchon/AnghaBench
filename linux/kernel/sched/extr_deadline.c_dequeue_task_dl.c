
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ on_rq; int dl; } ;
struct rq {int dl; } ;


 int DEQUEUE_SAVE ;
 int DEQUEUE_SLEEP ;
 scalar_t__ TASK_ON_RQ_MIGRATING ;
 int __dequeue_task_dl (struct rq*,struct task_struct*,int) ;
 int sub_rq_bw (int *,int *) ;
 int sub_running_bw (int *,int *) ;
 int task_non_contending (struct task_struct*) ;
 int update_curr_dl (struct rq*) ;

__attribute__((used)) static void dequeue_task_dl(struct rq *rq, struct task_struct *p, int flags)
{
 update_curr_dl(rq);
 __dequeue_task_dl(rq, p, flags);

 if (p->on_rq == TASK_ON_RQ_MIGRATING || flags & DEQUEUE_SAVE) {
  sub_running_bw(&p->dl, &rq->dl);
  sub_rq_bw(&p->dl, &rq->dl);
 }
 if (flags & DEQUEUE_SLEEP)
  task_non_contending(p);
}
