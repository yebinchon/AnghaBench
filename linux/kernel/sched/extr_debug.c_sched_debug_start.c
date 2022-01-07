
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef unsigned long loff_t ;


 int cpu_online_mask ;
 unsigned long cpumask_first (int ) ;
 unsigned long cpumask_next (unsigned long,int ) ;
 unsigned long nr_cpu_ids ;

__attribute__((used)) static void *sched_debug_start(struct seq_file *file, loff_t *offset)
{
 unsigned long n = *offset;

 if (n == 0)
  return (void *) 1;

 n--;

 if (n > 0)
  n = cpumask_next(n - 1, cpu_online_mask);
 else
  n = cpumask_first(cpu_online_mask);

 *offset = n + 1;

 if (n < nr_cpu_ids)
  return (void *)(unsigned long)(n + 2);

 return ((void*)0);
}
