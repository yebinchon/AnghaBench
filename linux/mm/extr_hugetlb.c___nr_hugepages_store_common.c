
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int dummy; } ;
typedef int ssize_t ;
typedef int nodemask_t ;


 int EINVAL ;
 int NUMA_NO_NODE ;
 size_t N_MEMORY ;
 int gigantic_page_runtime_supported () ;
 scalar_t__ hstate_is_gigantic (struct hstate*) ;
 scalar_t__ init_nodemask_of_mempolicy (int *) ;
 int init_nodemask_of_node (int *,int) ;
 int * node_states ;
 int set_max_huge_pages (struct hstate*,unsigned long,int,int *) ;

__attribute__((used)) static ssize_t __nr_hugepages_store_common(bool obey_mempolicy,
        struct hstate *h, int nid,
        unsigned long count, size_t len)
{
 int err;
 nodemask_t nodes_allowed, *n_mask;

 if (hstate_is_gigantic(h) && !gigantic_page_runtime_supported())
  return -EINVAL;

 if (nid == NUMA_NO_NODE) {



  if (!(obey_mempolicy &&
    init_nodemask_of_mempolicy(&nodes_allowed)))
   n_mask = &node_states[N_MEMORY];
  else
   n_mask = &nodes_allowed;
 } else {




  init_nodemask_of_node(&nodes_allowed, nid);
  n_mask = &nodes_allowed;
 }

 err = set_max_huge_pages(h, count, nid, n_mask);

 return err ? err : len;
}
