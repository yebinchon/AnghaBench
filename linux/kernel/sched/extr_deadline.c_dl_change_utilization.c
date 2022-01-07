
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int flags; int dl_bw; int inactive_timer; scalar_t__ dl_non_contending; } ;
struct task_struct {TYPE_1__ dl; } ;
struct rq {int dl; } ;


 int BUG_ON (int) ;
 int SCHED_FLAG_SUGOV ;
 int __add_rq_bw (int ,int *) ;
 int __sub_rq_bw (int ,int *) ;
 int hrtimer_try_to_cancel (int *) ;
 int put_task_struct (struct task_struct*) ;
 int sub_running_bw (TYPE_1__*,int *) ;
 scalar_t__ task_on_rq_queued (struct task_struct*) ;
 struct rq* task_rq (struct task_struct*) ;

void dl_change_utilization(struct task_struct *p, u64 new_bw)
{
 struct rq *rq;

 BUG_ON(p->dl.flags & SCHED_FLAG_SUGOV);

 if (task_on_rq_queued(p))
  return;

 rq = task_rq(p);
 if (p->dl.dl_non_contending) {
  sub_running_bw(&p->dl, &rq->dl);
  p->dl.dl_non_contending = 0;







  if (hrtimer_try_to_cancel(&p->dl.inactive_timer) == 1)
   put_task_struct(p);
 }
 __sub_rq_bw(p->dl.dl_bw, &rq->dl);
 __add_rq_bw(new_bw, &rq->dl);
}
