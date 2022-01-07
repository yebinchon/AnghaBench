
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_manager {int list; } ;


 int grace_lock ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
locks_end_grace(struct lock_manager *lm)
{
 spin_lock(&grace_lock);
 list_del_init(&lm->list);
 spin_unlock(&grace_lock);
}
