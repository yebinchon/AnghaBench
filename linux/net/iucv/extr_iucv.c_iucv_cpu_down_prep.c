
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_t ;


 int EINVAL ;
 int cpumask_clear_cpu (unsigned int,int *) ;
 int cpumask_copy (int *,int *) ;
 scalar_t__ cpumask_empty (int *) ;
 int cpumask_first (int *) ;
 int iucv_allow_cpu ;
 int iucv_buffer_cpumask ;
 int iucv_irq_cpumask ;
 int iucv_path_table ;
 int iucv_retrieve_cpu (int *) ;
 int smp_call_function_single (int ,int ,int *,int) ;

__attribute__((used)) static int iucv_cpu_down_prep(unsigned int cpu)
{
 cpumask_t cpumask;

 if (!iucv_path_table)
  return 0;

 cpumask_copy(&cpumask, &iucv_buffer_cpumask);
 cpumask_clear_cpu(cpu, &cpumask);
 if (cpumask_empty(&cpumask))

  return -EINVAL;

 iucv_retrieve_cpu(((void*)0));
 if (!cpumask_empty(&iucv_irq_cpumask))
  return 0;
 smp_call_function_single(cpumask_first(&iucv_buffer_cpumask),
     iucv_allow_cpu, ((void*)0), 1);
 return 0;
}
