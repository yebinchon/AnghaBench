
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RADIX_TREE_ENTRY_MASK ;
 unsigned long RADIX_TREE_INTERNAL_NODE ;

__attribute__((used)) static inline bool radix_tree_is_internal_node(void *ptr)
{
 return ((unsigned long)ptr & RADIX_TREE_ENTRY_MASK) ==
    RADIX_TREE_INTERNAL_NODE;
}
