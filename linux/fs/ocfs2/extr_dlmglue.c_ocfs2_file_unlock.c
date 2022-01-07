
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_mask_waiter {int dummy; } ;
struct ocfs2_lock_res {int l_flags; scalar_t__ l_level; int l_lock; int l_blocking; int l_action; int l_name; } ;
struct ocfs2_file_private {struct ocfs2_lock_res fp_flock; } ;
struct file {TYPE_2__* f_mapping; struct ocfs2_file_private* private_data; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int i_sb; } ;


 int DLM_LOCK_EX ;
 scalar_t__ DLM_LOCK_NL ;
 int OCFS2_LOCK_ATTACHED ;
 int OCFS2_LOCK_BLOCKED ;
 int OCFS2_LOCK_BUSY ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int lockres_add_mask_waiter (struct ocfs2_lock_res*,struct ocfs2_mask_waiter*,int ,int ) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;
 int mlog (int ,char*,int ,int,scalar_t__,int ) ;
 int mlog_errno (int) ;
 int ocfs2_downconvert_lock (struct ocfs2_super*,struct ocfs2_lock_res*,scalar_t__,int ,unsigned int) ;
 int ocfs2_init_mask_waiter (struct ocfs2_mask_waiter*) ;
 unsigned int ocfs2_prepare_downconvert (struct ocfs2_lock_res*,scalar_t__) ;
 int ocfs2_wait_for_mask (struct ocfs2_mask_waiter*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ocfs2_file_unlock(struct file *file)
{
 int ret;
 unsigned int gen;
 unsigned long flags;
 struct ocfs2_file_private *fp = file->private_data;
 struct ocfs2_lock_res *lockres = &fp->fp_flock;
 struct ocfs2_super *osb = OCFS2_SB(file->f_mapping->host->i_sb);
 struct ocfs2_mask_waiter mw;

 ocfs2_init_mask_waiter(&mw);

 if (!(lockres->l_flags & OCFS2_LOCK_ATTACHED))
  return;

 if (lockres->l_level == DLM_LOCK_NL)
  return;

 mlog(0, "Unlock: \"%s\" flags: 0x%lx, level: %d, act: %d\n",
      lockres->l_name, lockres->l_flags, lockres->l_level,
      lockres->l_action);

 spin_lock_irqsave(&lockres->l_lock, flags);



 lockres_or_flags(lockres, OCFS2_LOCK_BLOCKED);
 lockres->l_blocking = DLM_LOCK_EX;

 gen = ocfs2_prepare_downconvert(lockres, DLM_LOCK_NL);
 lockres_add_mask_waiter(lockres, &mw, OCFS2_LOCK_BUSY, 0);
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 ret = ocfs2_downconvert_lock(osb, lockres, DLM_LOCK_NL, 0, gen);
 if (ret) {
  mlog_errno(ret);
  return;
 }

 ret = ocfs2_wait_for_mask(&mw);
 if (ret)
  mlog_errno(ret);
}
