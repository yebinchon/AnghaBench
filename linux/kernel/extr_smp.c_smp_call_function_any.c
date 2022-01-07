
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef int smp_call_func_t ;


 scalar_t__ cpu_online (unsigned int) ;
 int cpu_online_mask ;
 int cpu_to_node (unsigned int) ;
 unsigned int cpumask_any_and (struct cpumask const*,int ) ;
 unsigned int cpumask_first_and (struct cpumask const*,struct cpumask const*) ;
 unsigned int cpumask_next_and (unsigned int,struct cpumask const*,struct cpumask const*) ;
 struct cpumask* cpumask_of_node (int ) ;
 scalar_t__ cpumask_test_cpu (unsigned int,struct cpumask const*) ;
 unsigned int get_cpu () ;
 unsigned int nr_cpu_ids ;
 int put_cpu () ;
 int smp_call_function_single (unsigned int,int ,void*,int) ;

int smp_call_function_any(const struct cpumask *mask,
     smp_call_func_t func, void *info, int wait)
{
 unsigned int cpu;
 const struct cpumask *nodemask;
 int ret;


 cpu = get_cpu();
 if (cpumask_test_cpu(cpu, mask))
  goto call;


 nodemask = cpumask_of_node(cpu_to_node(cpu));
 for (cpu = cpumask_first_and(nodemask, mask); cpu < nr_cpu_ids;
      cpu = cpumask_next_and(cpu, nodemask, mask)) {
  if (cpu_online(cpu))
   goto call;
 }


 cpu = cpumask_any_and(mask, cpu_online_mask);
call:
 ret = smp_call_function_single(cpu, func, info, wait);
 put_cpu();
 return ret;
}
