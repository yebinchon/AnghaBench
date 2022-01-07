
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


 int dequeue_pushable_task (struct rq*,struct task_struct*) ;
 int rq_clock_pelt (struct rq*) ;
 int rq_clock_task (struct rq*) ;
 int rt_queue_push_tasks (struct rq*) ;
 int rt_sched_class ;
 int update_rt_rq_load_avg (int ,struct rq*,int ) ;

__attribute__((used)) static inline void set_next_task_rt(struct rq *rq, struct task_struct *p)
{
 p->se.exec_start = rq_clock_task(rq);


 dequeue_pushable_task(rq, p);






 if (rq->curr->sched_class != &rt_sched_class)
  update_rt_rq_load_avg(rq_clock_pelt(rq), rq, 0);

 rt_queue_push_tasks(rq);
}
