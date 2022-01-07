
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_level; int l_lock; int l_action; } ;


 int ERESTARTSYS ;
 int OCFS2_LOCK_BUSY ;
 int lockres_add_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int ) ;
 int mlog (int ,char*,int,int,int,int ) ;
 int mlog_errno (int) ;
 int ocfs2_cancel_convert (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 struct ocfs2_super* ocfs2_get_lockres_osb (struct ocfs2_lock_res*) ;
 int ocfs2_init_mask_waiter (struct ocfs2_mask_waiter*) ;
 int ocfs2_prepare_cancel_convert (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 int ocfs2_wait_for_mask (struct ocfs2_mask_waiter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ocfs2_flock_handle_signal(struct ocfs2_lock_res *lockres,
         int level)
{
 int ret;
 struct ocfs2_super *osb = ocfs2_get_lockres_osb(lockres);
 unsigned long flags;
 struct ocfs2_mask_waiter mw;

 ocfs2_init_mask_waiter(&mw);

retry_cancel:
 spin_lock_irqsave(&lockres->l_lock, flags);
 if (lockres->l_flags & OCFS2_LOCK_BUSY) {
  ret = ocfs2_prepare_cancel_convert(osb, lockres);
  if (ret) {
   spin_unlock_irqrestore(&lockres->l_lock, flags);
   ret = ocfs2_cancel_convert(osb, lockres);
   if (ret < 0) {
    mlog_errno(ret);
    goto out;
   }
   goto retry_cancel;
  }
  lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_BUSY, 0);
  spin_unlock_irqrestore(&lockres->l_lock, flags);

  ocfs2_wait_for_mask(&mw);
  goto retry_cancel;
 }

 ret = -ERESTARTSYS;




 if (lockres->l_level == level)
  ret = 0;

 mlog(0, "Cancel returning %d. flags: 0x%lx, level: %d, act: %d\n", ret,
      lockres->l_flags, lockres->l_level, lockres->l_action);

 spin_unlock_irqrestore(&lockres->l_lock, flags);

out:
 return ret;
}
