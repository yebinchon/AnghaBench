
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 void* radix_tree_delete_item (struct radix_tree_root*,unsigned long,int *) ;

void *radix_tree_delete(struct radix_tree_root *root, unsigned long index)
{
 return radix_tree_delete_item(root, index, ((void*)0));
}
