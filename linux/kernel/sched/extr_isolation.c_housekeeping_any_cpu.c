
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hk_flags { ____Placeholder_hk_flags } hk_flags ;


 int cpu_online_mask ;
 int cpumask_any_and (int ,int ) ;
 int housekeeping_flags ;
 int housekeeping_mask ;
 int housekeeping_overridden ;
 int nr_cpu_ids ;
 int sched_numa_find_closest (int ,int) ;
 int smp_processor_id () ;
 scalar_t__ static_branch_unlikely (int *) ;

int housekeeping_any_cpu(enum hk_flags flags)
{
 int cpu;

 if (static_branch_unlikely(&housekeeping_overridden)) {
  if (housekeeping_flags & flags) {
   cpu = sched_numa_find_closest(housekeeping_mask, smp_processor_id());
   if (cpu < nr_cpu_ids)
    return cpu;

   return cpumask_any_and(housekeeping_mask, cpu_online_mask);
  }
 }
 return smp_processor_id();
}
