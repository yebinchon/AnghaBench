
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int orig_mask ;
typedef int mask ;
typedef int cpu_set_t ;
struct TYPE_3__ {int nr_cpus; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 int BUG_ON (int) ;
 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int NUMA_NO_NODE ;
 TYPE_2__* g ;
 int nr_numa_nodes () ;
 int sched_getaffinity (int ,int,int *) ;
 int sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static cpu_set_t bind_to_node(int target_node)
{
 int cpus_per_node = g->p.nr_cpus / nr_numa_nodes();
 cpu_set_t orig_mask, mask;
 int cpu;
 int ret;

 BUG_ON(cpus_per_node * nr_numa_nodes() != g->p.nr_cpus);
 BUG_ON(!cpus_per_node);

 ret = sched_getaffinity(0, sizeof(orig_mask), &orig_mask);
 BUG_ON(ret);

 CPU_ZERO(&mask);

 if (target_node == NUMA_NO_NODE) {
  for (cpu = 0; cpu < g->p.nr_cpus; cpu++)
   CPU_SET(cpu, &mask);
 } else {
  int cpu_start = (target_node + 0) * cpus_per_node;
  int cpu_stop = (target_node + 1) * cpus_per_node;

  BUG_ON(cpu_stop > g->p.nr_cpus);

  for (cpu = cpu_start; cpu < cpu_stop; cpu++)
   CPU_SET(cpu, &mask);
 }

 ret = sched_setaffinity(0, sizeof(mask), &mask);
 BUG_ON(ret);

 return orig_mask;
}
