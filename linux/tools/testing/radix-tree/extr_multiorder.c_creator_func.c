
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_tree_root {int dummy; } ;


 int RADIX_TREE_MAP_SHIFT ;
 int item_delete_rcu (struct radix_tree_root*,int ) ;
 int item_insert_order (struct radix_tree_root*,int ,unsigned int) ;
 int stop_iteration ;

__attribute__((used)) static void *creator_func(void *ptr)
{

 unsigned int order = RADIX_TREE_MAP_SHIFT - 1;
 struct radix_tree_root *tree = ptr;
 int i;

 for (i = 0; i < 10000; i++) {
  item_insert_order(tree, 0, order);
  item_delete_rcu(tree, 0);
 }

 stop_iteration = 1;
 return ((void*)0);
}
