
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exec_start; } ;
struct task_struct {TYPE_1__ se; } ;
struct rq {TYPE_2__* curr; } ;
struct TYPE_4__ {int * sched_class; } ;


 int deadline_queue_push_tasks (struct rq*) ;
 int dequeue_pushable_dl_task (struct rq*,struct task_struct*) ;
 int dl_sched_class ;
 scalar_t__ hrtick_enabled (struct rq*) ;
 int rq_clock_pelt (struct rq*) ;
 int rq_clock_task (struct rq*) ;
 int start_hrtick_dl (struct rq*,struct task_struct*) ;
 int update_dl_rq_load_avg (int ,struct rq*,int ) ;

__attribute__((used)) static void set_next_task_dl(struct rq *rq, struct task_struct *p)
{
 p->se.exec_start = rq_clock_task(rq);


 dequeue_pushable_dl_task(rq, p);

 if (hrtick_enabled(rq))
  start_hrtick_dl(rq, p);

 if (rq->curr->sched_class != &dl_sched_class)
  update_dl_rq_load_avg(rq_clock_pelt(rq), rq, 0);

 deadline_queue_push_tasks(rq);
}
