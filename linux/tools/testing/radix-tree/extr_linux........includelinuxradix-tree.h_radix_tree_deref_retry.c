
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int radix_tree_is_internal_node (void*) ;
 int unlikely (int ) ;

__attribute__((used)) static inline int radix_tree_deref_retry(void *arg)
{
 return unlikely(radix_tree_is_internal_node(arg));
}
