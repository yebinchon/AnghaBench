
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int nodemask ;
struct TYPE_3__ {int nr_nodes; } ;
struct TYPE_4__ {TYPE_1__ p; } ;


 int BUG_ON (int) ;
 int MPOL_BIND ;
 int NUMA_NO_NODE ;
 int dprintf (char*,int,unsigned long,int) ;
 TYPE_2__* g ;
 int set_mempolicy (int ,unsigned long*,int) ;

__attribute__((used)) static void bind_to_memnode(int node)
{
 unsigned long nodemask;
 int ret;

 if (node == NUMA_NO_NODE)
  return;

 BUG_ON(g->p.nr_nodes > (int)sizeof(nodemask)*8);
 nodemask = 1L << node;

 ret = set_mempolicy(MPOL_BIND, &nodemask, sizeof(nodemask)*8);
 dprintf("binding to node %d, mask: %016lx => %d\n", node, nodemask, ret);

 BUG_ON(ret);
}
