
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int dummy; } ;
struct task_struct {struct sched_rt_entity rt; } ;
struct rq {int dummy; } ;


 int dequeue_pushable_task (struct rq*,struct task_struct*) ;
 int dequeue_rt_entity (struct sched_rt_entity*,int) ;
 int update_curr_rt (struct rq*) ;

__attribute__((used)) static void dequeue_task_rt(struct rq *rq, struct task_struct *p, int flags)
{
 struct sched_rt_entity *rt_se = &p->rt;

 update_curr_rt(rq);
 dequeue_rt_entity(rt_se, flags);

 dequeue_pushable_task(rq, p);
}
