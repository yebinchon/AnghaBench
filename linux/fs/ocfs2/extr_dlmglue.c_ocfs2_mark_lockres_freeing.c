
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {scalar_t__ dc_task; int dc_task_lock; int blocked_lock_count; } ;
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_lock; int l_name; TYPE_1__* l_ops; int l_blocked_list; } ;
struct TYPE_2__ {int post_unlock; } ;


 int OCFS2_LOCK_FREEING ;
 int OCFS2_LOCK_QUEUED ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ current ;
 int list_del_init (int *) ;
 int lockres_add_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int ) ;
 int mlog (int ,char*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_init_mask_waiter (struct ocfs2_mask_waiter*) ;
 int ocfs2_process_blocked_lock (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 int ocfs2_wait_for_mask (struct ocfs2_mask_waiter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ocfs2_mark_lockres_freeing(struct ocfs2_super *osb,
    struct ocfs2_lock_res *lockres)
{
 int status;
 struct ocfs2_mask_waiter mw;
 unsigned long flags, flags2;

 ocfs2_init_mask_waiter(&mw);

 spin_lock_irqsave(&lockres->l_lock, flags);
 lockres->l_flags |= OCFS2_LOCK_FREEING;
 if (lockres->l_flags & OCFS2_LOCK_QUEUED && current == osb->dc_task) {
  spin_unlock_irqrestore(&lockres->l_lock, flags);
  spin_lock_irqsave(&osb->dc_task_lock, flags2);
  list_del_init(&lockres->l_blocked_list);
  osb->blocked_lock_count--;
  spin_unlock_irqrestore(&osb->dc_task_lock, flags2);






  WARN_ON_ONCE(lockres->l_ops->post_unlock);

  ocfs2_process_blocked_lock(osb, lockres);
  return;
 }
 while (lockres->l_flags & OCFS2_LOCK_QUEUED) {
  lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_QUEUED, 0);
  spin_unlock_irqrestore(&lockres->l_lock, flags);

  mlog(0, "Waiting on lockres %s\n", lockres->l_name);

  status = ocfs2_wait_for_mask(&mw);
  if (status)
   mlog_errno(status);

  spin_lock_irqsave(&lockres->l_lock, flags);
 }
 spin_unlock_irqrestore(&lockres->l_lock, flags);
}
