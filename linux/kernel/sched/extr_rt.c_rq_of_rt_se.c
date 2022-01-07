
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_rt_entity {int dummy; } ;
struct rq {int dummy; } ;


 struct task_struct* rt_task_of (struct sched_rt_entity*) ;
 struct rq* task_rq (struct task_struct*) ;

__attribute__((used)) static inline struct rq *rq_of_rt_se(struct sched_rt_entity *rt_se)
{
 struct task_struct *p = rt_task_of(rt_se);

 return task_rq(p);
}
