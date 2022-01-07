
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {struct radix_tree_node* xa_head; } ;
struct radix_tree_node {int dummy; } ;


 int radix_tree_is_internal_node (struct radix_tree_node*) ;
 int root_tag_get (struct radix_tree_root*,unsigned int) ;
 int verify_node (struct radix_tree_node*,unsigned int,int) ;

void verify_tag_consistency(struct radix_tree_root *root, unsigned int tag)
{
 struct radix_tree_node *node = root->xa_head;
 if (!radix_tree_is_internal_node(node))
  return;
 verify_node(node, tag, !!root_tag_get(root, tag));
}
