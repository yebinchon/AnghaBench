
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {scalar_t__ l_level; scalar_t__ l_requested; int l_event; int l_lock; int l_flags; int l_blocking; int l_name; int l_namelen; int l_lksb; } ;
struct ocfs2_dlm_lksb {int dummy; } ;


 scalar_t__ DLM_LOCK_IV ;
 int DLM_LOCK_NL ;
 int ML_BASTS ;
 int ML_ERROR ;
 int USER_LOCK_ATTACHED ;
 int USER_LOCK_BLOCKED ;
 int USER_LOCK_BUSY ;
 int mlog (int ,char*,int,int ,scalar_t__,...) ;
 int mlog_bug_on_msg (int,char*,int ,int ,int ) ;
 int ocfs2_dlm_lock_status (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ user_highest_compat_lock_level (int ) ;
 struct user_lock_res* user_lksb_to_lock_res (struct ocfs2_dlm_lksb*) ;
 int wake_up (int *) ;

__attribute__((used)) static void user_ast(struct ocfs2_dlm_lksb *lksb)
{
 struct user_lock_res *lockres = user_lksb_to_lock_res(lksb);
 int status;

 mlog(ML_BASTS, "AST fired for lockres %.*s, level %d => %d\n",
      lockres->l_namelen, lockres->l_name, lockres->l_level,
      lockres->l_requested);

 spin_lock(&lockres->l_lock);

 status = ocfs2_dlm_lock_status(&lockres->l_lksb);
 if (status) {
  mlog(ML_ERROR, "lksb status value of %u on lockres %.*s\n",
       status, lockres->l_namelen, lockres->l_name);
  spin_unlock(&lockres->l_lock);
  return;
 }

 mlog_bug_on_msg(lockres->l_requested == DLM_LOCK_IV,
   "Lockres %.*s, requested ivmode. flags 0x%x\n",
   lockres->l_namelen, lockres->l_name, lockres->l_flags);


 if (lockres->l_requested < lockres->l_level) {
  if (lockres->l_requested <=
      user_highest_compat_lock_level(lockres->l_blocking)) {
   lockres->l_blocking = DLM_LOCK_NL;
   lockres->l_flags &= ~USER_LOCK_BLOCKED;
  }
 }

 lockres->l_level = lockres->l_requested;
 lockres->l_requested = DLM_LOCK_IV;
 lockres->l_flags |= USER_LOCK_ATTACHED;
 lockres->l_flags &= ~USER_LOCK_BUSY;

 spin_unlock(&lockres->l_lock);

 wake_up(&lockres->l_event);
}
