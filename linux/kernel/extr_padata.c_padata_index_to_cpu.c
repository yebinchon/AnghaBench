
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcpu; } ;
struct parallel_data {TYPE_1__ cpumask; } ;


 int cpumask_first (int ) ;
 int cpumask_next (int,int ) ;

__attribute__((used)) static int padata_index_to_cpu(struct parallel_data *pd, int cpu_index)
{
 int cpu, target_cpu;

 target_cpu = cpumask_first(pd->cpumask.pcpu);
 for (cpu = 0; cpu < cpu_index; cpu++)
  target_cpu = cpumask_next(target_cpu, pd->cpumask.pcpu);

 return target_cpu;
}
