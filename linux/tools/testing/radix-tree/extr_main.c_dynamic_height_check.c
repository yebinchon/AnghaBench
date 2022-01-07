
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int assert (int ) ;
 int item_delete (int *,int) ;
 int item_insert (int *,int) ;
 int item_kill_tree (int *) ;
 int tree ;
 int tree_verify_min_height (int *,int) ;

void dynamic_height_check(void)
{
 int i;
 RADIX_TREE(tree, GFP_KERNEL);
 tree_verify_min_height(&tree, 0);

 item_insert(&tree, 42);
 tree_verify_min_height(&tree, 42);

 item_insert(&tree, 1000000);
 tree_verify_min_height(&tree, 1000000);

 assert(item_delete(&tree, 1000000));
 tree_verify_min_height(&tree, 42);

 assert(item_delete(&tree, 42));
 tree_verify_min_height(&tree, 0);

 for (i = 0; i < 1000; i++) {
  item_insert(&tree, i);
  tree_verify_min_height(&tree, i);
 }

 i--;
 for (;;) {
  assert(item_delete(&tree, i));
  if (i == 0) {
   tree_verify_min_height(&tree, 0);
   break;
  }
  i--;
  tree_verify_min_height(&tree, i);
 }

 item_kill_tree(&tree);
}
