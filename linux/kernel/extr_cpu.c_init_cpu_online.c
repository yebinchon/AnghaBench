
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int __cpu_online_mask ;
 int cpumask_copy (int *,struct cpumask const*) ;

void init_cpu_online(const struct cpumask *src)
{
 cpumask_copy(&__cpu_online_mask, src);
}
