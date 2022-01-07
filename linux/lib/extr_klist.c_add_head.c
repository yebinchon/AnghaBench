
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int n_node; } ;
struct klist {int k_lock; int k_list; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void add_head(struct klist *k, struct klist_node *n)
{
 spin_lock(&k->k_lock);
 list_add(&n->n_node, &k->k_list);
 spin_unlock(&k->k_lock);
}
