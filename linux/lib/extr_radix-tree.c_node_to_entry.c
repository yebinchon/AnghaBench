
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RADIX_TREE_INTERNAL_NODE ;

__attribute__((used)) static inline void *node_to_entry(void *ptr)
{
 return (void *)((unsigned long)ptr | RADIX_TREE_INTERNAL_NODE);
}
