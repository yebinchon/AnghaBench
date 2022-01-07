
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mempolicy* mempolicy; } ;
struct mempolicy {scalar_t__ mode; } ;


 int NUMA_NO_NODE ;
 struct mempolicy default_policy ;
 int numa_node_id () ;
 struct mempolicy* preferred_node_policy ;

struct mempolicy *get_task_policy(struct task_struct *p)
{
 struct mempolicy *pol = p->mempolicy;
 int node;

 if (pol)
  return pol;

 node = numa_node_id();
 if (node != NUMA_NO_NODE) {
  pol = &preferred_node_policy[node];

  if (pol->mode)
   return pol;
 }

 return &default_policy;
}
