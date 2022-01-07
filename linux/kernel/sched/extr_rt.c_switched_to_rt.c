
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int nr_cpus_allowed; scalar_t__ prio; } ;
struct TYPE_2__ {scalar_t__ overloaded; } ;
struct rq {struct task_struct* curr; TYPE_1__ rt; } ;


 int cpu_of (struct rq*) ;
 scalar_t__ cpu_online (int ) ;
 int resched_curr (struct rq*) ;
 int rt_queue_push_tasks (struct rq*) ;
 scalar_t__ task_on_rq_queued (struct task_struct*) ;

__attribute__((used)) static void switched_to_rt(struct rq *rq, struct task_struct *p)
{







 if (task_on_rq_queued(p) && rq->curr != p) {




  if (p->prio < rq->curr->prio && cpu_online(cpu_of(rq)))
   resched_curr(rq);
 }
}
