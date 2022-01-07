
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int radix_tree_tag_get (struct radix_tree_root*,unsigned long,int) ;

int item_tag_get(struct radix_tree_root *root, unsigned long index, int tag)
{
 return radix_tree_tag_get(root, index, tag);
}
