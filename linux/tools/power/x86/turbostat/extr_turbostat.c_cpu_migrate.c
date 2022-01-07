
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_SET_S (int,int ,int ) ;
 int CPU_ZERO_S (int ,int ) ;
 int cpu_affinity_set ;
 int cpu_affinity_setsize ;
 int sched_setaffinity (int ,int ,int ) ;

int cpu_migrate(int cpu)
{
 CPU_ZERO_S(cpu_affinity_setsize, cpu_affinity_set);
 CPU_SET_S(cpu, cpu_affinity_setsize, cpu_affinity_set);
 if (sched_setaffinity(0, cpu_affinity_setsize, cpu_affinity_set) == -1)
  return -1;
 else
  return 0;
}
