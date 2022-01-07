
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xa_state {struct xa_node* xa_alloc; } ;
struct xa_node {int private_list; } ;


 int XA_NODE_BUG_ON (struct xa_node*,int) ;
 int kmem_cache_free (int ,struct xa_node*) ;
 int list_empty (int *) ;
 int radix_tree_node_cachep ;

__attribute__((used)) static void xas_destroy(struct xa_state *xas)
{
 struct xa_node *node = xas->xa_alloc;

 if (!node)
  return;
 XA_NODE_BUG_ON(node, !list_empty(&node->private_list));
 kmem_cache_free(radix_tree_node_cachep, node);
 xas->xa_alloc = ((void*)0);
}
