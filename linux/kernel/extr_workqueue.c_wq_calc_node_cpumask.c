
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_attrs {int cpumask; scalar_t__ no_numa; } ;
typedef int cpumask_t ;


 int cpumask_and (int *,int ,int ) ;
 int cpumask_clear_cpu (int,int *) ;
 int cpumask_copy (int *,int ) ;
 scalar_t__ cpumask_empty (int *) ;
 int cpumask_equal (int *,int ) ;
 int cpumask_of_node (int) ;
 int pr_warn_once (char*) ;
 int wq_numa_enabled ;
 int * wq_numa_possible_cpumask ;

__attribute__((used)) static bool wq_calc_node_cpumask(const struct workqueue_attrs *attrs, int node,
     int cpu_going_down, cpumask_t *cpumask)
{
 if (!wq_numa_enabled || attrs->no_numa)
  goto use_dfl;


 cpumask_and(cpumask, cpumask_of_node(node), attrs->cpumask);
 if (cpu_going_down >= 0)
  cpumask_clear_cpu(cpu_going_down, cpumask);

 if (cpumask_empty(cpumask))
  goto use_dfl;


 cpumask_and(cpumask, attrs->cpumask, wq_numa_possible_cpumask[node]);

 if (cpumask_empty(cpumask)) {
  pr_warn_once("WARNING: workqueue cpumask: online intersect > "
    "possible intersect\n");
  return 0;
 }

 return !cpumask_equal(cpumask, attrs->cpumask);

use_dfl:
 cpumask_copy(cpumask, attrs->cpumask);
 return 0;
}
