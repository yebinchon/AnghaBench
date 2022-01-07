
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_log_item {int li_lsn; } ;
struct xfs_ail {int ail_empty; int ail_lock; int ail_task; int ail_target; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait ;
 int wake_up_process (int ) ;
 struct xfs_log_item* xfs_ail_max (struct xfs_ail*) ;

void
xfs_ail_push_all_sync(
 struct xfs_ail *ailp)
{
 struct xfs_log_item *lip;
 DEFINE_WAIT(wait);

 spin_lock(&ailp->ail_lock);
 while ((lip = xfs_ail_max(ailp)) != ((void*)0)) {
  prepare_to_wait(&ailp->ail_empty, &wait, TASK_UNINTERRUPTIBLE);
  ailp->ail_target = lip->li_lsn;
  wake_up_process(ailp->ail_task);
  spin_unlock(&ailp->ail_lock);
  schedule();
  spin_lock(&ailp->ail_lock);
 }
 spin_unlock(&ailp->ail_lock);

 finish_wait(&ailp->ail_empty, &wait);
}
