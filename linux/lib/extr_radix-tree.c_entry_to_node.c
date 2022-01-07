
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void radix_tree_node ;


 unsigned long RADIX_TREE_INTERNAL_NODE ;

__attribute__((used)) static inline struct radix_tree_node *entry_to_node(void *ptr)
{
 return (void *)((unsigned long)ptr & ~RADIX_TREE_INTERNAL_NODE);
}
