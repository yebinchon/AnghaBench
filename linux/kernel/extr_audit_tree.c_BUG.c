
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree {int goner; int list; int same_root; int * root; int rules; } ;
struct audit_krule {struct audit_tree* tree; int rlist; } ;


 int audit_schedule_prune () ;
 int hash_lock ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int list_move (int *,int *) ;
 int prune_list ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int audit_remove_tree_rule(struct audit_krule *rule)
{
 struct audit_tree *tree;
 tree = rule->tree;
 if (tree) {
  spin_lock(&hash_lock);
  list_del_init(&rule->rlist);
  if (list_empty(&tree->rules) && !tree->goner) {
   tree->root = ((void*)0);
   list_del_init(&tree->same_root);
   tree->goner = 1;
   list_move(&tree->list, &prune_list);
   rule->tree = ((void*)0);
   spin_unlock(&hash_lock);
   audit_schedule_prune();
   return 1;
  }
  rule->tree = ((void*)0);
  spin_unlock(&hash_lock);
  return 1;
 }
 return 0;
}
