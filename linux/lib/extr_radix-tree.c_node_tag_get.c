
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct radix_tree_node {int dummy; } ;


 int root_tag_get (struct radix_tree_root const*,unsigned int) ;
 int tag_get (struct radix_tree_node const*,unsigned int,unsigned int) ;

__attribute__((used)) static bool node_tag_get(const struct radix_tree_root *root,
    const struct radix_tree_node *node,
    unsigned int tag, unsigned int offset)
{
 if (node)
  return tag_get(node, tag, offset);
 return root_tag_get(root, tag);
}
