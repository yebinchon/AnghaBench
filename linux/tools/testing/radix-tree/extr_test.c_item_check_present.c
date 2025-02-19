
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct item {int dummy; } ;


 int assert (int ) ;
 int item_sanity (struct item*,unsigned long) ;
 struct item* radix_tree_lookup (struct radix_tree_root*,unsigned long) ;

void item_check_present(struct radix_tree_root *root, unsigned long index)
{
 struct item *item;

 item = radix_tree_lookup(root, index);
 assert(item != ((void*)0));
 item_sanity(item, index);
}
