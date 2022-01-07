
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int list; } ;


 int kfree (struct dsa_switch_tree*) ;
 int list_del (int *) ;

__attribute__((used)) static void dsa_tree_free(struct dsa_switch_tree *dst)
{
 list_del(&dst->list);
 kfree(dst);
}
