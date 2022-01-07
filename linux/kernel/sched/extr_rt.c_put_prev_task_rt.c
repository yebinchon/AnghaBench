
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int nr_cpus_allowed; int rt; } ;
struct rq {int dummy; } ;


 int enqueue_pushable_task (struct rq*,struct task_struct*) ;
 scalar_t__ on_rt_rq (int *) ;
 int rq_clock_pelt (struct rq*) ;
 int update_curr_rt (struct rq*) ;
 int update_rt_rq_load_avg (int ,struct rq*,int) ;

__attribute__((used)) static void put_prev_task_rt(struct rq *rq, struct task_struct *p)
{
 update_curr_rt(rq);

 update_rt_rq_load_avg(rq_clock_pelt(rq), rq, 1);





 if (on_rt_rq(&p->rt) && p->nr_cpus_allowed > 1)
  enqueue_pushable_task(rq, p);
}
