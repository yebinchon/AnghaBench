
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int dummy; } ;
struct rt_rq {unsigned int rt_nr_running; } ;


 struct rt_rq* group_rt_rq (struct sched_rt_entity*) ;

__attribute__((used)) static inline
unsigned int rt_se_nr_running(struct sched_rt_entity *rt_se)
{
 struct rt_rq *group_rq = group_rt_rq(rt_se);

 if (group_rq)
  return group_rq->rt_nr_running;
 else
  return 1;
}
