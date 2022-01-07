
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct item {int dummy; } ;


 struct item* radix_tree_lookup (struct radix_tree_root*,unsigned long) ;

struct item *item_lookup(struct radix_tree_root *root, unsigned long index)
{
 return radix_tree_lookup(root, index);
}
