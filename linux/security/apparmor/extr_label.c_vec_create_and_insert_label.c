
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int label; } ;
struct aa_labelset {int lock; } ;
struct aa_label {int * vec; } ;
typedef int gfp_t ;


 int AA_BUG (int) ;
 struct aa_label* __label_insert (struct aa_labelset*,struct aa_label*,int) ;
 struct aa_label* aa_get_label (int *) ;
 int aa_get_profile (struct aa_profile*) ;
 struct aa_label* aa_label_alloc (int,int *,int ) ;
 int label_free_or_put_new (struct aa_label*,struct aa_label*) ;
 struct aa_labelset* labels_set (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct aa_label *vec_create_and_insert_label(struct aa_profile **vec,
          int len, gfp_t gfp)
{
 struct aa_label *label = ((void*)0);
 struct aa_labelset *ls;
 unsigned long flags;
 struct aa_label *new;
 int i;

 AA_BUG(!vec);

 if (len == 1)
  return aa_get_label(&vec[0]->label);

 ls = labels_set(&vec[len - 1]->label);




 new = aa_label_alloc(len, ((void*)0), gfp);
 if (!new)
  return ((void*)0);

 for (i = 0; i < len; i++)
  new->vec[i] = aa_get_profile(vec[i]);

 write_lock_irqsave(&ls->lock, flags);
 label = __label_insert(ls, new, 0);
 write_unlock_irqrestore(&ls->lock, flags);
 label_free_or_put_new(label, new);

 return label;
}
