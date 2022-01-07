
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int setup; int index; } ;


 int EEXIST ;
 int dsa_tree_setup_default_cpu (struct dsa_switch_tree*) ;
 int dsa_tree_setup_master (struct dsa_switch_tree*) ;
 int dsa_tree_setup_routing_table (struct dsa_switch_tree*) ;
 int dsa_tree_setup_switches (struct dsa_switch_tree*) ;
 int dsa_tree_teardown_default_cpu (struct dsa_switch_tree*) ;
 int dsa_tree_teardown_switches (struct dsa_switch_tree*) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int dsa_tree_setup(struct dsa_switch_tree *dst)
{
 bool complete;
 int err;

 if (dst->setup) {
  pr_err("DSA: tree %d already setup! Disjoint trees?\n",
         dst->index);
  return -EEXIST;
 }

 complete = dsa_tree_setup_routing_table(dst);
 if (!complete)
  return 0;

 err = dsa_tree_setup_default_cpu(dst);
 if (err)
  return err;

 err = dsa_tree_setup_switches(dst);
 if (err)
  goto teardown_default_cpu;

 err = dsa_tree_setup_master(dst);
 if (err)
  goto teardown_switches;

 dst->setup = 1;

 pr_info("DSA: tree %d setup\n", dst->index);

 return 0;

teardown_switches:
 dsa_tree_teardown_switches(dst);
teardown_default_cpu:
 dsa_tree_teardown_default_cpu(dst);

 return err;
}
