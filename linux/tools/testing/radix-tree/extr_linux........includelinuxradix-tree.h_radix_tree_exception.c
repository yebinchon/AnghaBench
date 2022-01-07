
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RADIX_TREE_ENTRY_MASK ;
 int unlikely (unsigned long) ;

__attribute__((used)) static inline int radix_tree_exception(void *arg)
{
 return unlikely((unsigned long)arg & RADIX_TREE_ENTRY_MASK);
}
