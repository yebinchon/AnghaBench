
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {struct radix_tree_node* xa_head; } ;
struct radix_tree_node {unsigned int shift; } ;


 scalar_t__ RADIX_TREE_MAP_SHIFT ;
 int assert (int) ;
 struct radix_tree_node* entry_to_node (struct radix_tree_node*) ;
 int node_maxindex (struct radix_tree_node*) ;
 int radix_tree_is_internal_node (struct radix_tree_node*) ;
 int shift_maxindex (scalar_t__) ;

void tree_verify_min_height(struct radix_tree_root *root, int maxindex)
{
 unsigned shift;
 struct radix_tree_node *node = root->xa_head;
 if (!radix_tree_is_internal_node(node)) {
  assert(maxindex == 0);
  return;
 }

 node = entry_to_node(node);
 assert(maxindex <= node_maxindex(node));

 shift = node->shift;
 if (shift > 0)
  assert(maxindex > shift_maxindex(shift - RADIX_TREE_MAP_SHIFT));
 else
  assert(maxindex > 0);
}
