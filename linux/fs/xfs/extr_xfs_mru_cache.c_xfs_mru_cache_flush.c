
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mru_cache {int grp_count; int grp_time; int lock; int work; scalar_t__ queued; int lists; } ;


 int _xfs_mru_cache_clear_reap_list (struct xfs_mru_cache*) ;
 int _xfs_mru_cache_migrate (struct xfs_mru_cache*,scalar_t__) ;
 int cancel_delayed_work_sync (int *) ;
 scalar_t__ jiffies ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
xfs_mru_cache_flush(
 struct xfs_mru_cache *mru)
{
 if (!mru || !mru->lists)
  return;

 spin_lock(&mru->lock);
 if (mru->queued) {
  spin_unlock(&mru->lock);
  cancel_delayed_work_sync(&mru->work);
  spin_lock(&mru->lock);
 }

 _xfs_mru_cache_migrate(mru, jiffies + mru->grp_count * mru->grp_time);
 _xfs_mru_cache_clear_reap_list(mru);

 spin_unlock(&mru->lock);
}
