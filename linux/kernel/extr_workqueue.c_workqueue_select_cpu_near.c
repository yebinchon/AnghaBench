
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NUMNODES ;
 int WORK_CPU_UNBOUND ;
 int cpu_online_mask ;
 int cpu_to_node (int) ;
 int cpumask_any_and (int ,int ) ;
 int cpumask_of_node (int) ;
 int node_online (int) ;
 int nr_cpu_ids ;
 int raw_smp_processor_id () ;
 int wq_numa_enabled ;

__attribute__((used)) static int workqueue_select_cpu_near(int node)
{
 int cpu;


 if (!wq_numa_enabled)
  return WORK_CPU_UNBOUND;


 if (node < 0 || node >= MAX_NUMNODES || !node_online(node))
  return WORK_CPU_UNBOUND;


 cpu = raw_smp_processor_id();
 if (node == cpu_to_node(cpu))
  return cpu;


 cpu = cpumask_any_and(cpumask_of_node(node), cpu_online_mask);


 return cpu < nr_cpu_ids ? cpu : WORK_CPU_UNBOUND;
}
