
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct radix_tree_iter {int node; } ;


 int iter_offset (struct radix_tree_iter const*) ;
 int node_tag_clear (struct radix_tree_root*,int ,unsigned int,int ) ;

void radix_tree_iter_tag_clear(struct radix_tree_root *root,
   const struct radix_tree_iter *iter, unsigned int tag)
{
 node_tag_clear(root, iter->node, tag, iter_offset(iter));
}
