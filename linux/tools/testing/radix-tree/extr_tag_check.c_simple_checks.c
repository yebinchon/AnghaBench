
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int RADIX_TREE (int ,int ) ;
 int __simple_checks (int *,unsigned long,int) ;
 int item_kill_tree (int *) ;
 int nr_allocated ;
 int printv (int,char*,int ) ;
 int rcu_barrier () ;
 int tree ;
 int verify_tag_consistency (int *,int) ;

void simple_checks(void)
{
 unsigned long index;
 RADIX_TREE(tree, GFP_KERNEL);

 for (index = 0; index < 10000; index++) {
  __simple_checks(&tree, index, 0);
  __simple_checks(&tree, index, 1);
 }
 verify_tag_consistency(&tree, 0);
 verify_tag_consistency(&tree, 1);
 printv(2, "before item_kill_tree: %d allocated\n", nr_allocated);
 item_kill_tree(&tree);
 rcu_barrier();
 printv(2, "after item_kill_tree: %d allocated\n", nr_allocated);
}
