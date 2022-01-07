
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int item_check_absent (int *,unsigned long) ;
 int item_check_present (int *,unsigned long) ;
 int item_full_scan (int *,unsigned long,long,int) ;
 int item_gang_check_present (int *,unsigned long,long,int,int) ;
 int item_insert (int *,unsigned long) ;
 int item_kill_tree (int *) ;
 int tree ;

void __gang_check(unsigned long middle, long down, long up, int chunk, int hop)
{
 long idx;
 RADIX_TREE(tree, GFP_KERNEL);

 middle = 1 << 30;

 for (idx = -down; idx < up; idx++)
  item_insert(&tree, middle + idx);

 item_check_absent(&tree, middle - down - 1);
 for (idx = -down; idx < up; idx++)
  item_check_present(&tree, middle + idx);
 item_check_absent(&tree, middle + up);

 if (chunk > 0) {
  item_gang_check_present(&tree, middle - down, up + down,
    chunk, hop);
  item_full_scan(&tree, middle - down, down + up, chunk);
 }
 item_kill_tree(&tree);
}
