
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_labelset {int root; int lock; } ;
struct aa_label {int flags; int node; } ;


 int AA_BUG (int) ;
 int FLAG_IN_TREE ;
 int __aa_proxy_redirect (struct aa_label*,struct aa_label*) ;
 int __label_make_stale (struct aa_label*) ;
 int label_is_stale (struct aa_label*) ;
 struct aa_labelset* labels_set (struct aa_label*) ;
 int lockdep_assert_held_write (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static bool __label_remove(struct aa_label *label, struct aa_label *new)
{
 struct aa_labelset *ls = labels_set(label);

 AA_BUG(!ls);
 AA_BUG(!label);
 lockdep_assert_held_write(&ls->lock);

 if (new)
  __aa_proxy_redirect(label, new);

 if (!label_is_stale(label))
  __label_make_stale(label);

 if (label->flags & FLAG_IN_TREE) {
  rb_erase(&label->node, &ls->root);
  label->flags &= ~FLAG_IN_TREE;
  return 1;
 }

 return 0;
}
