
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpupri {TYPE_1__* pri_to_cpu; int cpu_to_pri; } ;
struct TYPE_2__ {int mask; } ;


 int CPUPRI_NR_PRIORITIES ;
 int free_cpumask_var (int ) ;
 int kfree (int ) ;

void cpupri_cleanup(struct cpupri *cp)
{
 int i;

 kfree(cp->cpu_to_pri);
 for (i = 0; i < CPUPRI_NR_PRIORITIES; i++)
  free_cpumask_var(cp->pri_to_cpu[i].mask);
}
