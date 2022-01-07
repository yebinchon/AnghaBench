
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmu_notifier {int rcu; int hlist; scalar_t__ users; struct mm_struct* mm; } ;
struct mm_struct {TYPE_1__* mmu_notifier_mm; } ;
struct TYPE_2__ {int lock; } ;


 scalar_t__ WARN_ON (int) ;
 int call_srcu (int *,int *,int ) ;
 int hlist_del_init_rcu (int *) ;
 int mmu_notifier_free_rcu ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu ;

void mmu_notifier_put(struct mmu_notifier *mn)
{
 struct mm_struct *mm = mn->mm;

 spin_lock(&mm->mmu_notifier_mm->lock);
 if (WARN_ON(!mn->users) || --mn->users)
  goto out_unlock;
 hlist_del_init_rcu(&mn->hlist);
 spin_unlock(&mm->mmu_notifier_mm->lock);

 call_srcu(&srcu, &mn->rcu, mmu_notifier_free_rcu);
 return;

out_unlock:
 spin_unlock(&mm->mmu_notifier_mm->lock);
}
