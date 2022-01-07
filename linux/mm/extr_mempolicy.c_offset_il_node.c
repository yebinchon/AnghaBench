
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
struct mempolicy {TYPE_1__ v; } ;


 int first_node (int ) ;
 int next_node (int,int ) ;
 unsigned int nodes_weight (int ) ;
 int numa_node_id () ;

__attribute__((used)) static unsigned offset_il_node(struct mempolicy *pol, unsigned long n)
{
 unsigned nnodes = nodes_weight(pol->v.nodes);
 unsigned target;
 int i;
 int nid;

 if (!nnodes)
  return numa_node_id();
 target = (unsigned int)n % nnodes;
 nid = first_node(pol->v.nodes);
 for (i = 0; i < target; i++)
  nid = next_node(nid, pol->v.nodes);
 return nid;
}
