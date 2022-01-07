
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int inactive_timer; } ;
struct task_struct {int nr_cpus_allowed; TYPE_1__ dl; } ;
struct TYPE_4__ {scalar_t__ overloaded; } ;
struct rq {struct task_struct* curr; TYPE_2__ dl; } ;


 int add_rq_bw (TYPE_1__*,TYPE_2__*) ;
 int check_preempt_curr_dl (struct rq*,struct task_struct*,int ) ;
 int deadline_queue_push_tasks (struct rq*) ;
 scalar_t__ dl_task (struct task_struct*) ;
 int hrtimer_try_to_cancel (int *) ;
 int put_task_struct (struct task_struct*) ;
 int resched_curr (struct rq*) ;
 int task_on_rq_queued (struct task_struct*) ;

__attribute__((used)) static void switched_to_dl(struct rq *rq, struct task_struct *p)
{
 if (hrtimer_try_to_cancel(&p->dl.inactive_timer) == 1)
  put_task_struct(p);


 if (!task_on_rq_queued(p)) {
  add_rq_bw(&p->dl, &rq->dl);

  return;
 }

 if (rq->curr != p) {




  if (dl_task(rq->curr))
   check_preempt_curr_dl(rq, p, 0);
  else
   resched_curr(rq);
 }
}
