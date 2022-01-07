
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mmu_notifier {int hlist; TYPE_1__* ops; } ;
struct mm_struct {int mm_count; TYPE_2__* mmu_notifier_mm; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int (* release ) (struct mmu_notifier*,struct mm_struct*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int hlist_del_init_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int mmdrop (struct mm_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int stub1 (struct mmu_notifier*,struct mm_struct*) ;
 int synchronize_srcu (int *) ;

void mmu_notifier_unregister(struct mmu_notifier *mn, struct mm_struct *mm)
{
 BUG_ON(atomic_read(&mm->mm_count) <= 0);

 if (!hlist_unhashed(&mn->hlist)) {




  int id;

  id = srcu_read_lock(&srcu);




  if (mn->ops->release)
   mn->ops->release(mn, mm);
  srcu_read_unlock(&srcu, id);

  spin_lock(&mm->mmu_notifier_mm->lock);




  hlist_del_init_rcu(&mn->hlist);
  spin_unlock(&mm->mmu_notifier_mm->lock);
 }





 synchronize_srcu(&srcu);

 BUG_ON(atomic_read(&mm->mm_count) <= 0);

 mmdrop(mm);
}
