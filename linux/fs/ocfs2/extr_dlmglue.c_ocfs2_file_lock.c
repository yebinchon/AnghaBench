
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int cconn; } ;
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_level; int l_requested; int l_name; int l_lksb; int l_lock; int l_action; } ;
struct ocfs2_file_private {struct ocfs2_lock_res fp_flock; } ;
struct file {TYPE_2__* f_mapping; struct ocfs2_file_private* private_data; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int i_sb; } ;


 int BUG_ON (int) ;
 unsigned int DLM_LKF_CONVERT ;
 unsigned int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;
 int EAGAIN ;
 int EINVAL ;
 int ERESTARTSYS ;
 int ML_ERROR ;
 int OCFS2_AST_CONVERT ;
 int OCFS2_LOCK_ATTACHED ;
 int OCFS2_LOCK_BUSY ;
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int lockres_add_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int,int ) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int) ;
 int lockres_remove_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*) ;
 int mlog (int ,char*,int ,int,int,...) ;
 int mlog_errno (int) ;
 int ocfs2_dlm_lock (int ,int,int *,unsigned int,int ,scalar_t__) ;
 int ocfs2_flock_handle_signal (struct ocfs2_lock_res*,int) ;
 int ocfs2_init_mask_waiter (struct ocfs2_mask_waiter*) ;
 int ocfs2_lock_create (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ) ;
 int ocfs2_log_dlm_error (char*,int,struct ocfs2_lock_res*) ;
 int ocfs2_recover_from_dlm_error (struct ocfs2_lock_res*,int) ;
 int ocfs2_wait_for_mask (struct ocfs2_mask_waiter*) ;
 int ocfs2_wait_for_mask_interruptible (struct ocfs2_mask_waiter*,struct ocfs2_lock_res*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ocfs2_file_lock(struct file *file, int ex, int trylock)
{
 int ret, level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 unsigned int lkm_flags = trylock ? DLM_LKF_NOQUEUE : 0;
 unsigned long flags;
 struct ocfs2_file_private *fp = file->private_data;
 struct ocfs2_lock_res *lockres = &fp->fp_flock;
 struct ocfs2_super *osb = OCFS2_SB(file->f_mapping->host->i_sb);
 struct ocfs2_mask_waiter mw;

 ocfs2_init_mask_waiter(&mw);

 if ((lockres->l_flags & OCFS2_LOCK_BUSY) ||
     (lockres->l_level > DLM_LOCK_NL)) {
  mlog(ML_ERROR,
       "File lock \"%s\" has busy or locked state: flags: 0x%lx, "
       "level: %u\n", lockres->l_name, lockres->l_flags,
       lockres->l_level);
  return -EINVAL;
 }

 spin_lock_irqsave(&lockres->l_lock, flags);
 if (!(lockres->l_flags & OCFS2_LOCK_ATTACHED)) {
  lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_BUSY, 0);
  spin_unlock_irqrestore(&lockres->l_lock, flags);





  ret = ocfs2_lock_create(osb, lockres, DLM_LOCK_NL, 0);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_wait_for_mask(&mw);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
  spin_lock_irqsave(&lockres->l_lock, flags);
 }

 lockres->l_action = OCFS2_AST_CONVERT;
 lkm_flags |= DLM_LKF_CONVERT;
 lockres->l_requested = level;
 lockres_or_flags(lockres, OCFS2_LOCK_BUSY);

 lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_BUSY, 0);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 ret = ocfs2_dlm_lock(osb->cconn, level, &lockres->l_lksb, lkm_flags,
        lockres->l_name, OCFS2_LOCK_ID_MAX_LEN - 1);
 if (ret) {
  if (!trylock || (ret != -EAGAIN)) {
   ocfs2_log_dlm_error("ocfs2_dlm_lock", ret, lockres);
   ret = -EINVAL;
  }

  ocfs2_recover_from_dlm_error(lockres, 1);
  lockres_remove_mask_waiter(lockres, &mw);
  goto out;
 }

 ret = ocfs2_wait_for_mask_interruptible(&mw, lockres);
 if (ret == -ERESTARTSYS) {
  ret = ocfs2_flock_handle_signal(lockres, level);
 } else if (!ret && (level > lockres->l_level)) {

  BUG_ON(!trylock);
  ret = -EAGAIN;
 }

out:

 mlog(0, "Lock: \"%s\" ex: %d, trylock: %d, returns: %d\n",
      lockres->l_name, ex, trylock, ret);
 return ret;
}
