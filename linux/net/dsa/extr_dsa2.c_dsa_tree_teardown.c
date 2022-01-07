
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int setup; int index; } ;


 int dsa_tree_teardown_default_cpu (struct dsa_switch_tree*) ;
 int dsa_tree_teardown_master (struct dsa_switch_tree*) ;
 int dsa_tree_teardown_switches (struct dsa_switch_tree*) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void dsa_tree_teardown(struct dsa_switch_tree *dst)
{
 if (!dst->setup)
  return;

 dsa_tree_teardown_master(dst);

 dsa_tree_teardown_switches(dst);

 dsa_tree_teardown_default_cpu(dst);

 pr_info("DSA: tree %d torn down\n", dst->index);

 dst->setup = 0;
}
