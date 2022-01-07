
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct item {int dummy; } ;


 int item_free (struct item*,unsigned long) ;
 struct item* radix_tree_delete (struct radix_tree_root*,unsigned long) ;

int item_delete(struct radix_tree_root *root, unsigned long index)
{
 struct item *item = radix_tree_delete(root, index);

 if (!item)
  return 0;

 item_free(item, index);
 return 1;
}
