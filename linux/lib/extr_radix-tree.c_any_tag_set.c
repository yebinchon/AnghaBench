
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {scalar_t__** tags; } ;


 unsigned int RADIX_TREE_TAG_LONGS ;

__attribute__((used)) static inline int any_tag_set(const struct radix_tree_node *node,
       unsigned int tag)
{
 unsigned idx;
 for (idx = 0; idx < RADIX_TREE_TAG_LONGS; idx++) {
  if (node->tags[tag][idx])
   return 1;
 }
 return 0;
}
