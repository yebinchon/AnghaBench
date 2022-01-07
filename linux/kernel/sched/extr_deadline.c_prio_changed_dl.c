
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int deadline; } ;
struct task_struct {TYPE_3__ dl; } ;
struct TYPE_4__ {int curr; } ;
struct TYPE_5__ {TYPE_1__ earliest_dl; int overloaded; } ;
struct rq {TYPE_2__ dl; struct task_struct* curr; } ;


 int deadline_queue_pull_task (struct rq*) ;
 scalar_t__ dl_time_before (int ,int ) ;
 int resched_curr (struct rq*) ;
 scalar_t__ task_on_rq_queued (struct task_struct*) ;

__attribute__((used)) static void prio_changed_dl(struct rq *rq, struct task_struct *p,
       int oldprio)
{
 if (task_on_rq_queued(p) || rq->curr == p) {
  resched_curr(rq);

 }
}
