
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_flags; int l_lock; } ;


 int OCFS2_LOCK_NEEDS_REFRESH ;
 int OCFS2_LOCK_REFRESHING ;
 int lockres_or_flags (struct ocfs2_lock_res*,int) ;
 int mlog (int ,char*,int) ;
 int ocfs2_wait_on_refreshing_lock (struct ocfs2_lock_res*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ocfs2_should_refresh_lock_res(struct ocfs2_lock_res *lockres)
{
 unsigned long flags;
 int status = 0;

refresh_check:
 spin_lock_irqsave(&lockres->l_lock, flags);
 if (!(lockres->l_flags & OCFS2_LOCK_NEEDS_REFRESH)) {
  spin_unlock_irqrestore(&lockres->l_lock, flags);
  goto bail;
 }

 if (lockres->l_flags & OCFS2_LOCK_REFRESHING) {
  spin_unlock_irqrestore(&lockres->l_lock, flags);

  ocfs2_wait_on_refreshing_lock(lockres);
  goto refresh_check;
 }


 lockres_or_flags(lockres, OCFS2_LOCK_REFRESHING);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 status = 1;
bail:
 mlog(0, "status %d\n", status);
 return status;
}
