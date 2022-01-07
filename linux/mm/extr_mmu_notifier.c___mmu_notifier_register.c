
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier_mm {int lock; int list; } ;
struct mmu_notifier {int users; int hlist; struct mm_struct* mm; } ;
struct mm_struct {int mm_users; struct mmu_notifier_mm* mmu_notifier_mm; int mmap_sem; } ;


 int BUG_ON (int) ;
 int CONFIG_LOCKDEP ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ IS_ENABLED (int ) ;
 int __mmu_notifier_invalidate_range_start_map ;
 scalar_t__ atomic_read (int *) ;
 int fs_reclaim_acquire (int ) ;
 int fs_reclaim_release (int ) ;
 int hlist_add_head_rcu (int *,int *) ;
 int kfree (struct mmu_notifier_mm*) ;
 struct mmu_notifier_mm* kmalloc (int,int ) ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int lockdep_assert_held_write (int *) ;
 int mm_drop_all_locks (struct mm_struct*) ;
 int mm_take_all_locks (struct mm_struct*) ;
 int mmgrab (struct mm_struct*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int __mmu_notifier_register(struct mmu_notifier *mn, struct mm_struct *mm)
{
 struct mmu_notifier_mm *mmu_notifier_mm = ((void*)0);
 int ret;

 lockdep_assert_held_write(&mm->mmap_sem);
 BUG_ON(atomic_read(&mm->mm_users) <= 0);

 if (IS_ENABLED(CONFIG_LOCKDEP)) {
  fs_reclaim_acquire(GFP_KERNEL);
  lock_map_acquire(&__mmu_notifier_invalidate_range_start_map);
  lock_map_release(&__mmu_notifier_invalidate_range_start_map);
  fs_reclaim_release(GFP_KERNEL);
 }

 mn->mm = mm;
 mn->users = 1;

 if (!mm->mmu_notifier_mm) {





  mmu_notifier_mm =
   kmalloc(sizeof(struct mmu_notifier_mm), GFP_KERNEL);
  if (!mmu_notifier_mm)
   return -ENOMEM;

  INIT_HLIST_HEAD(&mmu_notifier_mm->list);
  spin_lock_init(&mmu_notifier_mm->lock);
 }

 ret = mm_take_all_locks(mm);
 if (unlikely(ret))
  goto out_clean;


 mmgrab(mm);
 if (mmu_notifier_mm)
  mm->mmu_notifier_mm = mmu_notifier_mm;

 spin_lock(&mm->mmu_notifier_mm->lock);
 hlist_add_head_rcu(&mn->hlist, &mm->mmu_notifier_mm->list);
 spin_unlock(&mm->mmu_notifier_mm->lock);

 mm_drop_all_locks(mm);
 BUG_ON(atomic_read(&mm->mm_users) <= 0);
 return 0;

out_clean:
 kfree(mmu_notifier_mm);
 return ret;
}
