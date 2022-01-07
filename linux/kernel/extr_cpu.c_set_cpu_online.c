
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpu_online_mask ;
 int __num_online_cpus ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ cpumask_test_and_clear_cpu (unsigned int,int *) ;
 int cpumask_test_and_set_cpu (unsigned int,int *) ;

void set_cpu_online(unsigned int cpu, bool online)
{
 if (online) {
  if (!cpumask_test_and_set_cpu(cpu, &__cpu_online_mask))
   atomic_inc(&__num_online_cpus);
 } else {
  if (cpumask_test_and_clear_cpu(cpu, &__cpu_online_mask))
   atomic_dec(&__num_online_cpus);
 }
}
