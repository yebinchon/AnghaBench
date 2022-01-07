
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int dummy; } ;
struct rt_rq {int dummy; } ;
struct rq {struct rt_rq rt; } ;


 struct rq* rq_of_rt_se (struct sched_rt_entity*) ;

__attribute__((used)) static inline struct rt_rq *rt_rq_of_se(struct sched_rt_entity *rt_se)
{
 struct rq *rq = rq_of_rt_se(rt_se);

 return &rq->rt;
}
