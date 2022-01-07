
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; int prev; } ;
struct xa_node {int ** marks; TYPE_1__ private_list; int array; int nr_values; int count; int shift; scalar_t__ parent; int offset; } ;


 unsigned int XA_MARK_LONGS ;
 unsigned int XA_MAX_MARKS ;
 int pr_cont (char*,...) ;

void xa_dump_node(const struct xa_node *node)
{
 unsigned i, j;

 if (!node)
  return;
 if ((unsigned long)node & 3) {
  pr_cont("node %px\n", node);
  return;
 }

 pr_cont("node %px %s %d parent %px shift %d count %d values %d "
  "array %px list %px %px marks",
  node, node->parent ? "offset" : "max", node->offset,
  node->parent, node->shift, node->count, node->nr_values,
  node->array, node->private_list.prev, node->private_list.next);
 for (i = 0; i < XA_MAX_MARKS; i++)
  for (j = 0; j < XA_MARK_LONGS; j++)
   pr_cont(" %lx", node->marks[i][j]);
 pr_cont("\n");
}
