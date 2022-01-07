
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int ** ds; } ;


 int dsa_tree_put (struct dsa_switch_tree*) ;
 int dsa_tree_teardown (struct dsa_switch_tree*) ;

__attribute__((used)) static void dsa_tree_remove_switch(struct dsa_switch_tree *dst,
       unsigned int index)
{
 dsa_tree_teardown(dst);

 dst->ds[index] = ((void*)0);
 dsa_tree_put(dst);
}
