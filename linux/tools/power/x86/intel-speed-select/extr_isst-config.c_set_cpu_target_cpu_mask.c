
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ISSET_S (int ,int ,int ) ;
 int CPU_SET_S (int ,size_t,int ) ;
 size_t alloc_cpu_set (int *) ;
 int max_target_cpus ;
 int present_cpumask ;
 int present_cpumask_size ;
 int target_cpumask ;
 size_t target_cpumask_size ;
 int * target_cpus ;

__attribute__((used)) static void set_cpu_target_cpu_mask(void)
{
 size_t size;
 int i;

 size = alloc_cpu_set(&target_cpumask);
 target_cpumask_size = size;
 for (i = 0; i < max_target_cpus; ++i) {
  if (!CPU_ISSET_S(target_cpus[i], present_cpumask_size,
     present_cpumask))
   continue;

  CPU_SET_S(target_cpus[i], size, target_cpumask);
 }
}
