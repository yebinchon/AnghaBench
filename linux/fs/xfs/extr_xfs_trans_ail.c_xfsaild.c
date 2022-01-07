
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_ail {scalar_t__ ail_target; scalar_t__ ail_target_prev; int ail_lock; int ail_buf_list; int ail_mount; } ;
struct TYPE_2__ {int flags; } ;


 int ASSERT (int) ;
 int PF_MEMALLOC ;
 int TASK_INTERRUPTIBLE ;
 int TASK_KILLABLE ;
 int TASK_RUNNING ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int __set_current_state (int ) ;
 TYPE_1__* current ;
 int freezable_schedule () ;
 int freezable_schedule_timeout (int ) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ list_empty (int *) ;
 int msecs_to_jiffies (long) ;
 int set_current_state (int ) ;
 int set_freezable () ;
 int smp_rmb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int try_to_freeze () ;
 int xfs_ail_min (struct xfs_ail*) ;
 int xfs_buf_delwri_cancel (int *) ;
 long xfsaild_push (struct xfs_ail*) ;

__attribute__((used)) static int
xfsaild(
 void *data)
{
 struct xfs_ail *ailp = data;
 long tout = 0;

 current->flags |= PF_MEMALLOC;
 set_freezable();

 while (1) {
  if (tout && tout <= 20)
   set_current_state(TASK_KILLABLE);
  else
   set_current_state(TASK_INTERRUPTIBLE);
  if (kthread_should_stop()) {
   __set_current_state(TASK_RUNNING);
   ASSERT(list_empty(&ailp->ail_buf_list) ||
          XFS_FORCED_SHUTDOWN(ailp->ail_mount));
   xfs_buf_delwri_cancel(&ailp->ail_buf_list);
   break;
  }

  spin_lock(&ailp->ail_lock);
  smp_rmb();
  if (!xfs_ail_min(ailp) &&
      ailp->ail_target == ailp->ail_target_prev) {
   spin_unlock(&ailp->ail_lock);
   freezable_schedule();
   tout = 0;
   continue;
  }
  spin_unlock(&ailp->ail_lock);

  if (tout)
   freezable_schedule_timeout(msecs_to_jiffies(tout));

  __set_current_state(TASK_RUNNING);

  try_to_freeze();

  tout = xfsaild_push(ailp);
 }

 return 0;
}
