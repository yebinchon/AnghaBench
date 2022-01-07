
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int xa_head; } ;
struct radix_tree_node {int shift; } ;


 int RADIX_TREE_MAP_SHIFT ;
 struct radix_tree_node* entry_to_node (struct radix_tree_node*) ;
 scalar_t__ likely (int ) ;
 unsigned long node_maxindex (struct radix_tree_node*) ;
 int radix_tree_is_internal_node (struct radix_tree_node*) ;
 struct radix_tree_node* rcu_dereference_raw (int ) ;

__attribute__((used)) static unsigned radix_tree_load_root(const struct radix_tree_root *root,
  struct radix_tree_node **nodep, unsigned long *maxindex)
{
 struct radix_tree_node *node = rcu_dereference_raw(root->xa_head);

 *nodep = node;

 if (likely(radix_tree_is_internal_node(node))) {
  node = entry_to_node(node);
  *maxindex = node_maxindex(node);
  return node->shift + RADIX_TREE_MAP_SHIFT;
 }

 *maxindex = 0;
 return 0;
}
