
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_lock_res {int l_flags; int l_level; int l_requested; int l_lock; int l_namelen; int l_name; int l_lksb; } ;
struct ocfs2_cluster_connection {int dummy; } ;


 int BUG_ON (int) ;
 int DLM_LKF_CONVERT ;
 int DLM_LKF_NOQUEUE ;
 int DLM_LKF_VALBLK ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_IV ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;
 int EAGAIN ;
 int EINVAL ;
 int ERESTARTSYS ;
 int ML_BASTS ;
 int ML_ERROR ;
 int USER_LOCK_BLOCKED ;
 int USER_LOCK_BUSY ;
 struct ocfs2_cluster_connection* cluster_connection_from_user_lockres (struct user_lock_res*) ;
 int current ;
 int mlog (int ,char*,int ,int ,...) ;
 int ocfs2_dlm_lock (struct ocfs2_cluster_connection*,int,int *,int,int ,int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int user_dlm_inc_holders (struct user_lock_res*,int) ;
 int user_log_dlm_error (char*,int,struct user_lock_res*) ;
 int user_may_continue_on_blocked_lock (struct user_lock_res*,int) ;
 int user_recover_from_dlm_error (struct user_lock_res*) ;
 int user_wait_on_blocked_lock (struct user_lock_res*) ;
 int user_wait_on_busy_lock (struct user_lock_res*) ;

int user_dlm_cluster_lock(struct user_lock_res *lockres,
     int level,
     int lkm_flags)
{
 int status, local_flags;
 struct ocfs2_cluster_connection *conn =
  cluster_connection_from_user_lockres(lockres);

 if (level != DLM_LOCK_EX &&
     level != DLM_LOCK_PR) {
  mlog(ML_ERROR, "lockres %.*s: invalid request!\n",
       lockres->l_namelen, lockres->l_name);
  status = -EINVAL;
  goto bail;
 }

 mlog(ML_BASTS, "lockres %.*s, level %d, flags = 0x%x\n",
      lockres->l_namelen, lockres->l_name, level, lkm_flags);

again:
 if (signal_pending(current)) {
  status = -ERESTARTSYS;
  goto bail;
 }

 spin_lock(&lockres->l_lock);




 if ((lockres->l_flags & USER_LOCK_BUSY) &&
     (level > lockres->l_level)) {


  spin_unlock(&lockres->l_lock);

  user_wait_on_busy_lock(lockres);
  goto again;
 }

 if ((lockres->l_flags & USER_LOCK_BLOCKED) &&
     (!user_may_continue_on_blocked_lock(lockres, level))) {


  spin_unlock(&lockres->l_lock);

  user_wait_on_blocked_lock(lockres);
  goto again;
 }

 if (level > lockres->l_level) {
  local_flags = lkm_flags | DLM_LKF_VALBLK;
  if (lockres->l_level != DLM_LOCK_IV)
   local_flags |= DLM_LKF_CONVERT;

  lockres->l_requested = level;
  lockres->l_flags |= USER_LOCK_BUSY;
  spin_unlock(&lockres->l_lock);

  BUG_ON(level == DLM_LOCK_IV);
  BUG_ON(level == DLM_LOCK_NL);


  status = ocfs2_dlm_lock(conn, level, &lockres->l_lksb,
     local_flags, lockres->l_name,
     lockres->l_namelen);
  if (status) {
   if ((lkm_flags & DLM_LKF_NOQUEUE) &&
       (status != -EAGAIN))
    user_log_dlm_error("ocfs2_dlm_lock",
         status, lockres);
   user_recover_from_dlm_error(lockres);
   goto bail;
  }

  user_wait_on_busy_lock(lockres);
  goto again;
 }

 user_dlm_inc_holders(lockres, level);
 spin_unlock(&lockres->l_lock);

 status = 0;
bail:
 return status;
}
