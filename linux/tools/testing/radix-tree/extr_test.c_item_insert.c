
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;
struct item {int index; } ;


 int free (struct item*) ;
 struct item* item_create (unsigned long,int ) ;
 int radix_tree_insert (struct radix_tree_root*,int ,struct item*) ;

int item_insert(struct radix_tree_root *root, unsigned long index)
{
 struct item *item = item_create(index, 0);
 int err = radix_tree_insert(root, item->index, item);
 if (err)
  free(item);
 return err;
}
