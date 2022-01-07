
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_event; int l_lock; } ;


 int OCFS2_LOCK_NEEDS_REFRESH ;
 int OCFS2_LOCK_REFRESHING ;
 int lockres_clear_flags (struct ocfs2_lock_res*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void ocfs2_complete_lock_res_refresh(struct ocfs2_lock_res *lockres,
         int status)
{
 unsigned long flags;

 spin_lock_irqsave(&lockres->l_lock, flags);
 lockres_clear_flags(lockres, OCFS2_LOCK_REFRESHING);
 if (!status)
  lockres_clear_flags(lockres, OCFS2_LOCK_NEEDS_REFRESH);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 wake_up(&lockres->l_event);
}
