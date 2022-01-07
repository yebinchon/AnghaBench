
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_unlock_action; int l_flags; int l_lock; int l_event; int l_level; int l_action; int l_name; } ;
struct ocfs2_dlm_lksb {int dummy; } ;


 int BUG () ;
 int DLM_LOCK_IV ;
 int ML_BASTS ;
 int ML_ERROR ;
 int OCFS2_AST_INVALID ;
 int OCFS2_LOCK_BLOCKED ;
 int OCFS2_LOCK_BUSY ;


 int OCFS2_UNLOCK_INVALID ;
 int lockres_clear_flags (struct ocfs2_lock_res*,int ) ;
 int mlog (int ,char*,int,...) ;
 int ocfs2_get_lockres_osb (struct ocfs2_lock_res*) ;
 struct ocfs2_lock_res* ocfs2_lksb_to_lock_res (struct ocfs2_dlm_lksb*) ;
 int ocfs2_wake_downconvert_thread (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void ocfs2_unlock_ast(struct ocfs2_dlm_lksb *lksb, int error)
{
 struct ocfs2_lock_res *lockres = ocfs2_lksb_to_lock_res(lksb);
 unsigned long flags;

 mlog(ML_BASTS, "UNLOCK AST fired for lockres %s, action = %d\n",
      lockres->l_name, lockres->l_unlock_action);

 spin_lock_irqsave(&lockres->l_lock, flags);
 if (error) {
  mlog(ML_ERROR, "Dlm passes error %d for lock %s, "
       "unlock_action %d\n", error, lockres->l_name,
       lockres->l_unlock_action);
  spin_unlock_irqrestore(&lockres->l_lock, flags);
  return;
 }

 switch(lockres->l_unlock_action) {
 case 129:
  mlog(0, "Cancel convert success for %s\n", lockres->l_name);
  lockres->l_action = OCFS2_AST_INVALID;


  if (lockres->l_flags & OCFS2_LOCK_BLOCKED)
   ocfs2_wake_downconvert_thread(ocfs2_get_lockres_osb(lockres));
  break;
 case 128:
  lockres->l_level = DLM_LOCK_IV;
  break;
 default:
  BUG();
 }

 lockres_clear_flags(lockres, OCFS2_LOCK_BUSY);
 lockres->l_unlock_action = OCFS2_UNLOCK_INVALID;
 wake_up(&lockres->l_event);
 spin_unlock_irqrestore(&lockres->l_lock, flags);
}
