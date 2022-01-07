
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int item_delete (int *,int) ;
 int item_insert (int *,int) ;
 int item_kill_tree (int *) ;
 int tree ;

__attribute__((used)) static void leak_check(void)
{
 RADIX_TREE(tree, GFP_KERNEL);

 item_insert(&tree, 1000000);
 item_delete(&tree, 1000000);
 item_kill_tree(&tree);
}
