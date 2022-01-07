
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;


 unsigned long calc_delta_fair (unsigned long,struct sched_entity*) ;
 unsigned long sysctl_sched_wakeup_granularity ;

__attribute__((used)) static unsigned long wakeup_gran(struct sched_entity *se)
{
 unsigned long gran = sysctl_sched_wakeup_granularity;
 return calc_delta_fair(gran, se);
}
