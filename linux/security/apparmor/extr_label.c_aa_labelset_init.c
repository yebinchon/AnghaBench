
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_labelset {int root; int lock; } ;


 int AA_BUG (int) ;
 int RB_ROOT ;
 int rwlock_init (int *) ;

void aa_labelset_init(struct aa_labelset *ls)
{
 AA_BUG(!ls);

 rwlock_init(&ls->lock);
 ls->root = RB_ROOT;
}
