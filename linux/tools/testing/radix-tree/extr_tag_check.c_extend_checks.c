
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int assert (int) ;
 int item_delete (int *,int) ;
 int item_insert (int *,int) ;
 int item_kill_tree (int *) ;
 int item_tag_get (int *,int,int ) ;
 int item_tag_set (int *,int,int ) ;
 int tree ;
 int verify_tag_consistency (int *,int ) ;

__attribute__((used)) static void extend_checks(void)
{
 RADIX_TREE(tree, GFP_KERNEL);

 item_insert(&tree, 43);
 assert(item_tag_get(&tree, 43, 0) == 0);
 item_tag_set(&tree, 43, 0);
 assert(item_tag_get(&tree, 43, 0) == 1);
 item_insert(&tree, 1000000);
 assert(item_tag_get(&tree, 43, 0) == 1);

 item_insert(&tree, 0);
 item_tag_set(&tree, 0, 0);
 item_delete(&tree, 1000000);
 assert(item_tag_get(&tree, 43, 0) != 0);
 item_delete(&tree, 43);
 assert(item_tag_get(&tree, 43, 0) == 0);
 assert(item_tag_get(&tree, 0, 0) == 1);

 verify_tag_consistency(&tree, 0);

 item_kill_tree(&tree);
}
