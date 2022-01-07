
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct radix_tree_node {unsigned int offset; struct radix_tree_node* parent; } ;


 scalar_t__ any_tag_set (struct radix_tree_node*,unsigned int) ;
 int root_tag_clear (struct radix_tree_root*,unsigned int) ;
 scalar_t__ root_tag_get (struct radix_tree_root*,unsigned int) ;
 int tag_clear (struct radix_tree_node*,unsigned int,unsigned int) ;
 int tag_get (struct radix_tree_node*,unsigned int,unsigned int) ;

__attribute__((used)) static void node_tag_clear(struct radix_tree_root *root,
    struct radix_tree_node *node,
    unsigned int tag, unsigned int offset)
{
 while (node) {
  if (!tag_get(node, tag, offset))
   return;
  tag_clear(node, tag, offset);
  if (any_tag_set(node, tag))
   return;

  offset = node->offset;
  node = node->parent;
 }


 if (root_tag_get(root, tag))
  root_tag_clear(root, tag);
}
