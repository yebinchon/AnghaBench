
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_labelset {int lock; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 struct aa_label* __label_find (struct aa_label*) ;
 struct aa_label* __label_insert (struct aa_labelset*,struct aa_label*,int) ;
 int label_is_stale (struct aa_label*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

struct aa_label *aa_label_insert(struct aa_labelset *ls, struct aa_label *label)
{
 struct aa_label *l;
 unsigned long flags;

 AA_BUG(!ls);
 AA_BUG(!label);


 if (!label_is_stale(label)) {
  read_lock_irqsave(&ls->lock, flags);
  l = __label_find(label);
  read_unlock_irqrestore(&ls->lock, flags);
  if (l)
   return l;
 }

 write_lock_irqsave(&ls->lock, flags);
 l = __label_insert(ls, label, 0);
 write_unlock_irqrestore(&ls->lock, flags);

 return l;
}
