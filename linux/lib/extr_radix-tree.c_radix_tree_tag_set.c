
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
typedef void radix_tree_node ;


 int BUG_ON (int) ;
 void* entry_to_node (void*) ;
 unsigned int radix_tree_descend (void*,void**,unsigned long) ;
 scalar_t__ radix_tree_is_internal_node (void*) ;
 int radix_tree_load_root (struct radix_tree_root*,void**,unsigned long*) ;
 int root_tag_get (struct radix_tree_root*,unsigned int) ;
 int root_tag_set (struct radix_tree_root*,unsigned int) ;
 int tag_get (void*,unsigned int,unsigned int) ;
 int tag_set (void*,unsigned int,unsigned int) ;

void *radix_tree_tag_set(struct radix_tree_root *root,
   unsigned long index, unsigned int tag)
{
 struct radix_tree_node *node, *parent;
 unsigned long maxindex;

 radix_tree_load_root(root, &node, &maxindex);
 BUG_ON(index > maxindex);

 while (radix_tree_is_internal_node(node)) {
  unsigned offset;

  parent = entry_to_node(node);
  offset = radix_tree_descend(parent, &node, index);
  BUG_ON(!node);

  if (!tag_get(parent, tag, offset))
   tag_set(parent, tag, offset);
 }


 if (!root_tag_get(root, tag))
  root_tag_set(root, tag);

 return node;
}
