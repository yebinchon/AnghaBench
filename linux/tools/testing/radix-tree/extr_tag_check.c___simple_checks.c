
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int assert (int) ;
 int item_check_absent (struct radix_tree_root*,unsigned long) ;
 int item_delete (struct radix_tree_root*,unsigned long) ;
 int item_insert (struct radix_tree_root*,unsigned long) ;
 int item_tag_get (struct radix_tree_root*,unsigned long,int) ;
 int item_tag_set (struct radix_tree_root*,unsigned long,int) ;
 int tag_tagged_items (struct radix_tree_root*,unsigned long,unsigned long,int,int,int) ;

__attribute__((used)) static void
__simple_checks(struct radix_tree_root *tree, unsigned long index, int tag)
{
 unsigned long first = 0;
 int ret;

 item_check_absent(tree, index);
 assert(item_tag_get(tree, index, tag) == 0);

 item_insert(tree, index);
 assert(item_tag_get(tree, index, tag) == 0);
 item_tag_set(tree, index, tag);
 ret = item_tag_get(tree, index, tag);
 assert(ret != 0);
 ret = tag_tagged_items(tree, first, ~0UL, 10, tag, !tag);
 assert(ret == 1);
 ret = item_tag_get(tree, index, !tag);
 assert(ret != 0);
 ret = item_delete(tree, index);
 assert(ret != 0);
 item_insert(tree, index);
 ret = item_tag_get(tree, index, tag);
 assert(ret == 0);
 ret = item_delete(tree, index);
 assert(ret != 0);
 ret = item_delete(tree, index);
 assert(ret == 0);
}
