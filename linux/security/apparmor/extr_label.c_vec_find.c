
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int dummy; } ;
struct aa_labelset {int lock; } ;
struct aa_label {int dummy; } ;


 int AA_BUG (int) ;
 struct aa_label* __vec_find (struct aa_profile**,int) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 struct aa_labelset* vec_labelset (struct aa_profile**,int) ;

__attribute__((used)) static struct aa_label *vec_find(struct aa_profile **vec, int n)
{
 struct aa_labelset *ls;
 struct aa_label *label;
 unsigned long flags;

 AA_BUG(!vec);
 AA_BUG(!*vec);
 AA_BUG(n <= 0);

 ls = vec_labelset(vec, n);
 read_lock_irqsave(&ls->lock, flags);
 label = __vec_find(vec, n);
 read_unlock_irqrestore(&ls->lock, flags);

 return label;
}
