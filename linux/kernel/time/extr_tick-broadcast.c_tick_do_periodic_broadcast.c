
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_online_mask ;
 int cpumask_and (int ,int ,int ) ;
 int tick_broadcast_mask ;
 int tick_do_broadcast (int ) ;
 int tmpmask ;

__attribute__((used)) static bool tick_do_periodic_broadcast(void)
{
 cpumask_and(tmpmask, cpu_online_mask, tick_broadcast_mask);
 return tick_do_broadcast(tmpmask);
}
