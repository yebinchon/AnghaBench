
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {int * tags; } ;


 int test_bit (int,int ) ;

__attribute__((used)) static inline int tag_get(const struct radix_tree_node *node, unsigned int tag,
  int offset)
{
 return test_bit(offset, node->tags[tag]);
}
