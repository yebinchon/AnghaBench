
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_var_t ;


 int free_cpumask_var (int ) ;
 int kfree (int *) ;
 int nr_node_ids ;

__attribute__((used)) static void free_node_to_cpumask(cpumask_var_t *masks)
{
 int node;

 for (node = 0; node < nr_node_ids; node++)
  free_cpumask_var(masks[node]);
 kfree(masks);
}
