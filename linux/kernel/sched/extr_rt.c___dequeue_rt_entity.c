
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {scalar_t__ on_rq; int on_list; } ;
struct rt_prio_array {int dummy; } ;
struct rt_rq {struct rt_prio_array active; } ;


 int WARN_ON_ONCE (int) ;
 int __delist_rt_entity (struct sched_rt_entity*,struct rt_prio_array*) ;
 int dec_rt_tasks (struct sched_rt_entity*,struct rt_rq*) ;
 scalar_t__ move_entity (unsigned int) ;
 struct rt_rq* rt_rq_of_se (struct sched_rt_entity*) ;

__attribute__((used)) static void __dequeue_rt_entity(struct sched_rt_entity *rt_se, unsigned int flags)
{
 struct rt_rq *rt_rq = rt_rq_of_se(rt_se);
 struct rt_prio_array *array = &rt_rq->active;

 if (move_entity(flags)) {
  WARN_ON_ONCE(!rt_se->on_list);
  __delist_rt_entity(rt_se, array);
 }
 rt_se->on_rq = 0;

 dec_rt_tasks(rt_se, rt_rq);
}
