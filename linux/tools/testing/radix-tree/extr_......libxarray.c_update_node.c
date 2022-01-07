
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {int dummy; } ;
struct xa_node {scalar_t__ count; scalar_t__ nr_values; } ;


 scalar_t__ XA_CHUNK_SIZE ;
 int XA_NODE_BUG_ON (struct xa_node*,int) ;
 int xas_delete_node (struct xa_state*) ;
 int xas_update (struct xa_state*,struct xa_node*) ;

__attribute__((used)) static void update_node(struct xa_state *xas, struct xa_node *node,
  int count, int values)
{
 if (!node || (!count && !values))
  return;

 node->count += count;
 node->nr_values += values;
 XA_NODE_BUG_ON(node, node->count > XA_CHUNK_SIZE);
 XA_NODE_BUG_ON(node, node->nr_values > XA_CHUNK_SIZE);
 xas_update(xas, node);
 if (count < 0)
  xas_delete_node(xas);
}
