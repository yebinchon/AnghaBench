
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_labelset {int root; int lock; } ;
struct aa_label {int flags; int node; } ;


 int AA_BUG (int) ;
 int FLAG_IN_TREE ;
 int __label_make_stale (struct aa_label*) ;
 int label_is_stale (struct aa_label*) ;
 struct aa_labelset* labels_set (struct aa_label*) ;
 int lockdep_assert_held_write (int *) ;
 int rb_replace_node (int *,int *,int *) ;

__attribute__((used)) static bool __label_replace(struct aa_label *old, struct aa_label *new)
{
 struct aa_labelset *ls = labels_set(old);

 AA_BUG(!ls);
 AA_BUG(!old);
 AA_BUG(!new);
 lockdep_assert_held_write(&ls->lock);
 AA_BUG(new->flags & FLAG_IN_TREE);

 if (!label_is_stale(old))
  __label_make_stale(old);

 if (old->flags & FLAG_IN_TREE) {
  rb_replace_node(&old->node, &new->node, &ls->root);
  old->flags &= ~FLAG_IN_TREE;
  new->flags |= FLAG_IN_TREE;
  return 1;
 }

 return 0;
}
