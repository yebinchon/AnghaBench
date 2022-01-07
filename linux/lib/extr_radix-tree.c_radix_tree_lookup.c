
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 void* __radix_tree_lookup (struct radix_tree_root const*,unsigned long,int *,int *) ;

void *radix_tree_lookup(const struct radix_tree_root *root, unsigned long index)
{
 return __radix_tree_lookup(root, index, ((void*)0), ((void*)0));
}
