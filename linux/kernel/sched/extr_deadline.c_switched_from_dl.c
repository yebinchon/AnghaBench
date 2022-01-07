
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ dl_non_contending; scalar_t__ dl_runtime; } ;
struct task_struct {TYPE_1__ dl; } ;
struct TYPE_6__ {scalar_t__ dl_nr_running; } ;
struct rq {TYPE_2__ dl; } ;


 int deadline_queue_pull_task (struct rq*) ;
 int sub_rq_bw (TYPE_1__*,TYPE_2__*) ;
 int sub_running_bw (TYPE_1__*,TYPE_2__*) ;
 int task_non_contending (struct task_struct*) ;
 scalar_t__ task_on_rq_queued (struct task_struct*) ;

__attribute__((used)) static void switched_from_dl(struct rq *rq, struct task_struct *p)
{
 if (task_on_rq_queued(p) && p->dl.dl_runtime)
  task_non_contending(p);

 if (!task_on_rq_queued(p)) {






  if (p->dl.dl_non_contending)
   sub_running_bw(&p->dl, &rq->dl);
  sub_rq_bw(&p->dl, &rq->dl);
 }






 if (p->dl.dl_non_contending)
  p->dl.dl_non_contending = 0;






 if (!task_on_rq_queued(p) || rq->dl.dl_nr_running)
  return;

 deadline_queue_pull_task(rq);
}
