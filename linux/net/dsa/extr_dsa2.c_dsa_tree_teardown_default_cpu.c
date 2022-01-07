
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int * cpu_dp; } ;



__attribute__((used)) static void dsa_tree_teardown_default_cpu(struct dsa_switch_tree *dst)
{

 dst->cpu_dp = ((void*)0);
}
