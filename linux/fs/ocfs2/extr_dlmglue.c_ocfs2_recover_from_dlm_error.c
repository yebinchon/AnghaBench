
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_event; int l_lock; int l_unlock_action; int l_action; } ;


 int OCFS2_AST_INVALID ;
 int OCFS2_LOCK_BUSY ;
 int OCFS2_LOCK_UPCONVERT_FINISHING ;
 int OCFS2_UNLOCK_INVALID ;
 int lockres_clear_flags (struct ocfs2_lock_res*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void ocfs2_recover_from_dlm_error(struct ocfs2_lock_res *lockres,
      int convert)
{
 unsigned long flags;

 spin_lock_irqsave(&lockres->l_lock, flags);
 lockres_clear_flags(lockres, OCFS2_LOCK_BUSY);
 lockres_clear_flags(lockres, OCFS2_LOCK_UPCONVERT_FINISHING);
 if (convert)
  lockres->l_action = OCFS2_AST_INVALID;
 else
  lockres->l_unlock_action = OCFS2_UNLOCK_INVALID;
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 wake_up(&lockres->l_event);
}
