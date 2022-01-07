
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpudl {int free_cpus; } ;


 int cpumask_clear_cpu (int,int ) ;

void cpudl_clear_freecpu(struct cpudl *cp, int cpu)
{
 cpumask_clear_cpu(cpu, cp->free_cpus);
}
