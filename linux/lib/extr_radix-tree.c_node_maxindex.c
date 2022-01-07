
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_node {int shift; } ;


 unsigned long shift_maxindex (int ) ;

__attribute__((used)) static inline unsigned long node_maxindex(const struct radix_tree_node *node)
{
 return shift_maxindex(node->shift);
}
