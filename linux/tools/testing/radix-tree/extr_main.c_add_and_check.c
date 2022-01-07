
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int item_check_absent (int *,int) ;
 int item_check_present (int *,int) ;
 int item_insert (int *,int) ;
 int item_kill_tree (int *) ;
 int tree ;

void add_and_check(void)
{
 RADIX_TREE(tree, GFP_KERNEL);

 item_insert(&tree, 44);
 item_check_present(&tree, 44);
 item_check_absent(&tree, 43);
 item_kill_tree(&tree);
}
