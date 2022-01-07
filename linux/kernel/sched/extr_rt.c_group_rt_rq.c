
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int dummy; } ;
struct rt_rq {int dummy; } ;



__attribute__((used)) static inline struct rt_rq *group_rt_rq(struct sched_rt_entity *rt_se)
{
 return ((void*)0);
}
