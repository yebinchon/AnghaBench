
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int dummy; } ;
struct rt_rq {int dummy; } ;


 int def_rt_bandwidth ;
 int start_rt_bandwidth (int *) ;

__attribute__((used)) static void
inc_rt_group(struct sched_rt_entity *rt_se, struct rt_rq *rt_rq)
{
 start_rt_bandwidth(&def_rt_bandwidth);
}
