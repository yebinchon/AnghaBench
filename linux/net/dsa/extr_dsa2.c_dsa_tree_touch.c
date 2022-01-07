
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int dummy; } ;


 struct dsa_switch_tree* dsa_tree_alloc (int) ;
 struct dsa_switch_tree* dsa_tree_find (int) ;
 struct dsa_switch_tree* dsa_tree_get (struct dsa_switch_tree*) ;

__attribute__((used)) static struct dsa_switch_tree *dsa_tree_touch(int index)
{
 struct dsa_switch_tree *dst;

 dst = dsa_tree_find(index);
 if (dst)
  return dsa_tree_get(dst);
 else
  return dsa_tree_alloc(index);
}
