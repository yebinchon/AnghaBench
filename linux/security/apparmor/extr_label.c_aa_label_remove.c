
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_labelset {int lock; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 int __label_remove (struct aa_label*,int ) ;
 int labels_ns (struct aa_label*) ;
 struct aa_labelset* labels_set (struct aa_label*) ;
 int ns_unconfined (int ) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

bool aa_label_remove(struct aa_label *label)
{
 struct aa_labelset *ls = labels_set(label);
 unsigned long flags;
 bool res;

 AA_BUG(!ls);

 write_lock_irqsave(&ls->lock, flags);
 res = __label_remove(label, ns_unconfined(labels_ns(label)));
 write_unlock_irqrestore(&ls->lock, flags);

 return res;
}
