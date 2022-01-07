
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpumask_var_t ;


 int GFP_KERNEL ;
 int free_cpumask_var (int ) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int nr_node_ids ;
 int zalloc_cpumask_var (int *,int ) ;

__attribute__((used)) static cpumask_var_t *alloc_node_to_cpumask(void)
{
 cpumask_var_t *masks;
 int node;

 masks = kcalloc(nr_node_ids, sizeof(cpumask_var_t), GFP_KERNEL);
 if (!masks)
  return ((void*)0);

 for (node = 0; node < nr_node_ids; node++) {
  if (!zalloc_cpumask_var(&masks[node], GFP_KERNEL))
   goto out_unwind;
 }

 return masks;

out_unwind:
 while (--node >= 0)
  free_cpumask_var(masks[node]);
 kfree(masks);
 return ((void*)0);
}
