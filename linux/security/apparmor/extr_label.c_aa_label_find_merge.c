
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_labelset {int lock; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 struct aa_label* __label_find_merge (struct aa_labelset*,struct aa_label*,struct aa_label*) ;
 struct aa_label* aa_get_newest_label (struct aa_label*) ;
 int aa_put_label (struct aa_label*) ;
 scalar_t__ label_is_stale (struct aa_label*) ;
 struct aa_labelset* labelset_of_merge (struct aa_label*,struct aa_label*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

struct aa_label *aa_label_find_merge(struct aa_label *a, struct aa_label *b)
{
 struct aa_labelset *ls;
 struct aa_label *label, *ar = ((void*)0), *br = ((void*)0);
 unsigned long flags;

 AA_BUG(!a);
 AA_BUG(!b);

 if (label_is_stale(a))
  a = ar = aa_get_newest_label(a);
 if (label_is_stale(b))
  b = br = aa_get_newest_label(b);
 ls = labelset_of_merge(a, b);
 read_lock_irqsave(&ls->lock, flags);
 label = __label_find_merge(ls, a, b);
 read_unlock_irqrestore(&ls->lock, flags);
 aa_put_label(ar);
 aa_put_label(br);

 return label;
}
