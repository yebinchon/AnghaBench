
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dc_task_lock; int blocked_lock_count; int blocked_lock_list; } ;
struct ocfs2_lock_res {int l_flags; int l_blocked_list; int l_name; int l_lock; } ;


 int ML_BASTS ;
 int OCFS2_LOCK_FREEING ;
 int OCFS2_LOCK_QUEUED ;
 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;
 int mlog (int ,char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ocfs2_schedule_blocked_lock(struct ocfs2_super *osb,
     struct ocfs2_lock_res *lockres)
{
 unsigned long flags;

 assert_spin_locked(&lockres->l_lock);

 if (lockres->l_flags & OCFS2_LOCK_FREEING) {



  mlog(ML_BASTS, "lockres %s won't be scheduled: flags 0x%lx\n",
       lockres->l_name, lockres->l_flags);
  return;
 }

 lockres_or_flags(lockres, OCFS2_LOCK_QUEUED);

 spin_lock_irqsave(&osb->dc_task_lock, flags);
 if (list_empty(&lockres->l_blocked_list)) {
  list_add_tail(&lockres->l_blocked_list,
         &osb->blocked_lock_list);
  osb->blocked_lock_count++;
 }
 spin_unlock_irqrestore(&osb->dc_task_lock, flags);
}
