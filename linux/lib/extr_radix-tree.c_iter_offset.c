
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_iter {unsigned int index; } ;


 unsigned int RADIX_TREE_MAP_MASK ;

__attribute__((used)) static unsigned int iter_offset(const struct radix_tree_iter *iter)
{
 return iter->index & RADIX_TREE_MAP_MASK;
}
