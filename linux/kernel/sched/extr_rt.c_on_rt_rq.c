
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int on_rq; } ;



__attribute__((used)) static inline int on_rt_rq(struct sched_rt_entity *rt_se)
{
 return rt_se->on_rq;
}
