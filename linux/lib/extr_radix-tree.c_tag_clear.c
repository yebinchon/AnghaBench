
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {int * tags; } ;


 int __clear_bit (int,int ) ;

__attribute__((used)) static inline void tag_clear(struct radix_tree_node *node, unsigned int tag,
  int offset)
{
 __clear_bit(offset, node->tags[tag]);
}
