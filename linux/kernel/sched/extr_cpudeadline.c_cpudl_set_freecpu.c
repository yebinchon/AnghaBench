
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpudl {int free_cpus; } ;


 int cpumask_set_cpu (int,int ) ;

void cpudl_set_freecpu(struct cpudl *cp, int cpu)
{
 cpumask_set_cpu(cpu, cp->free_cpus);
}
