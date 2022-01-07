
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_possible_mask ;
 int cpumask_first (int ) ;
 int cpumask_next (int,int ) ;
 int nr_cpu_ids ;

__attribute__((used)) static int get_next_cpu(int cpu)
{
 cpu = cpumask_next(cpu, cpu_possible_mask);
 if (cpu >= nr_cpu_ids)
  cpu = cpumask_first(cpu_possible_mask);
 return cpu;
}
