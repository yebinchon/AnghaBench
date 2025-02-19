
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_rt_entity {int dummy; } ;
struct rt_rq {int dummy; } ;
struct rq {struct rt_rq rt; } ;


 int BUG_ON (int) ;
 struct rt_rq* group_rt_rq (struct sched_rt_entity*) ;
 struct sched_rt_entity* pick_next_rt_entity (struct rq*,struct rt_rq*) ;
 struct task_struct* rt_task_of (struct sched_rt_entity*) ;

__attribute__((used)) static struct task_struct *_pick_next_task_rt(struct rq *rq)
{
 struct sched_rt_entity *rt_se;
 struct rt_rq *rt_rq = &rq->rt;

 do {
  rt_se = pick_next_rt_entity(rq, rt_rq);
  BUG_ON(!rt_se);
  rt_rq = group_rt_rq(rt_se);
 } while (rt_rq);

 return rt_task_of(rt_se);
}
