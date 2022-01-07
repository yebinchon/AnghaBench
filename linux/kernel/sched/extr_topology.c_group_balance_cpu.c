
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_group {int dummy; } ;


 int cpumask_first (int ) ;
 int group_balance_mask (struct sched_group*) ;

int group_balance_cpu(struct sched_group *sg)
{
 return cpumask_first(group_balance_mask(sg));
}
