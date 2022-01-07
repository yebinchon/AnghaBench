
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {int * tags; } ;


 int RADIX_TREE_MAP_SIZE ;
 int bitmap_fill (int ,int ) ;

__attribute__((used)) static inline void all_tag_set(struct radix_tree_node *node, unsigned int tag)
{
 bitmap_fill(node->tags[tag], RADIX_TREE_MAP_SIZE);
}
