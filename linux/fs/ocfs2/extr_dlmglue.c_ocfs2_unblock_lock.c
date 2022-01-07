
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_unblock_ctl {int requeue; int unblock_action; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_flags; int l_blocking; int l_level; int l_lock; TYPE_1__* l_ops; int l_name; scalar_t__ l_ex_holders; scalar_t__ l_ro_holders; } ;
struct TYPE_2__ {int flags; int (* set_lvb ) (struct ocfs2_lock_res*) ;int (* downconvert_worker ) (struct ocfs2_lock_res*,int) ;int (* check_downconvert ) (struct ocfs2_lock_res*,int) ;} ;


 int BUG_ON (int) ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_NL ;
 int DLM_LOCK_PR ;
 int LOCK_TYPE_REQUIRES_REFRESH ;
 int LOCK_TYPE_USES_LVB ;
 int ML_BASTS ;
 int OCFS2_LOCK_BLOCKED ;
 int OCFS2_LOCK_BUSY ;
 int OCFS2_LOCK_NEEDS_REFRESH ;
 int OCFS2_LOCK_PENDING ;
 int OCFS2_LOCK_REFRESHING ;
 int OCFS2_LOCK_UPCONVERT_FINISHING ;
 int UNBLOCK_STOP_POST ;
 int lockres_clear_flags (struct ocfs2_lock_res*,int) ;
 int mlog (int ,char*,int ,...) ;
 int mlog_errno (int) ;
 int ocfs2_cancel_convert (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 int ocfs2_downconvert_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int,unsigned int) ;
 int ocfs2_highest_compat_lock_level (int) ;
 int ocfs2_prepare_cancel_convert (struct ocfs2_super*,struct ocfs2_lock_res*) ;
 unsigned int ocfs2_prepare_downconvert (struct ocfs2_lock_res*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ocfs2_lock_res*,int) ;
 int stub2 (struct ocfs2_lock_res*,int) ;
 int stub3 (struct ocfs2_lock_res*) ;

__attribute__((used)) static int ocfs2_unblock_lock(struct ocfs2_super *osb,
         struct ocfs2_lock_res *lockres,
         struct ocfs2_unblock_ctl *ctl)
{
 unsigned long flags;
 int blocking;
 int new_level;
 int level;
 int ret = 0;
 int set_lvb = 0;
 unsigned int gen;

 spin_lock_irqsave(&lockres->l_lock, flags);

recheck:



 if (!(lockres->l_flags & OCFS2_LOCK_BLOCKED)) {
  BUG_ON(lockres->l_blocking != DLM_LOCK_NL);
  spin_unlock_irqrestore(&lockres->l_lock, flags);
  ret = 0;
  goto leave;
 }

 if (lockres->l_flags & OCFS2_LOCK_BUSY) {
  if (lockres->l_flags & OCFS2_LOCK_PENDING) {
   mlog(ML_BASTS, "lockres %s, ReQ: Pending\n",
        lockres->l_name);
   goto leave_requeue;
  }

  ctl->requeue = 1;
  ret = ocfs2_prepare_cancel_convert(osb, lockres);
  spin_unlock_irqrestore(&lockres->l_lock, flags);
  if (ret) {
   ret = ocfs2_cancel_convert(osb, lockres);
   if (ret < 0)
    mlog_errno(ret);
  }
  goto leave;
 }
 if (lockres->l_flags & OCFS2_LOCK_UPCONVERT_FINISHING)
  goto leave_requeue;






 if (lockres->l_level == DLM_LOCK_NL) {
  BUG_ON(lockres->l_ex_holders || lockres->l_ro_holders);
  mlog(ML_BASTS, "lockres %s, Aborting dc\n", lockres->l_name);
  lockres->l_blocking = DLM_LOCK_NL;
  lockres_clear_flags(lockres, OCFS2_LOCK_BLOCKED);
  spin_unlock_irqrestore(&lockres->l_lock, flags);
  goto leave;
 }



 if ((lockres->l_blocking == DLM_LOCK_EX)
     && (lockres->l_ex_holders || lockres->l_ro_holders)) {
  mlog(ML_BASTS, "lockres %s, ReQ: EX/PR Holders %u,%u\n",
       lockres->l_name, lockres->l_ex_holders,
       lockres->l_ro_holders);
  goto leave_requeue;
 }



 if (lockres->l_blocking == DLM_LOCK_PR &&
     lockres->l_ex_holders) {
  mlog(ML_BASTS, "lockres %s, ReQ: EX Holders %u\n",
       lockres->l_name, lockres->l_ex_holders);
  goto leave_requeue;
 }





 if ((lockres->l_ops->flags & LOCK_TYPE_REQUIRES_REFRESH)
     && (lockres->l_flags & OCFS2_LOCK_REFRESHING)) {
  mlog(ML_BASTS, "lockres %s, ReQ: Lock Refreshing\n",
       lockres->l_name);
  goto leave_requeue;
 }

 new_level = ocfs2_highest_compat_lock_level(lockres->l_blocking);

 if (lockres->l_ops->check_downconvert
     && !lockres->l_ops->check_downconvert(lockres, new_level)) {
  mlog(ML_BASTS, "lockres %s, ReQ: Checkpointing\n",
       lockres->l_name);
  goto leave_requeue;
 }




 if (!lockres->l_ops->downconvert_worker)
  goto downconvert;





 blocking = lockres->l_blocking;
 level = lockres->l_level;
 spin_unlock_irqrestore(&lockres->l_lock, flags);

 ctl->unblock_action = lockres->l_ops->downconvert_worker(lockres, blocking);

 if (ctl->unblock_action == UNBLOCK_STOP_POST) {
  mlog(ML_BASTS, "lockres %s, UNBLOCK_STOP_POST\n",
       lockres->l_name);
  goto leave;
 }

 spin_lock_irqsave(&lockres->l_lock, flags);
 if ((blocking != lockres->l_blocking) || (level != lockres->l_level)) {


  mlog(ML_BASTS, "lockres %s, block=%d:%d, level=%d:%d, "
       "Recheck\n", lockres->l_name, blocking,
       lockres->l_blocking, level, lockres->l_level);
  goto recheck;
 }

downconvert:
 ctl->requeue = 0;

 if (lockres->l_ops->flags & LOCK_TYPE_USES_LVB) {
  if (lockres->l_level == DLM_LOCK_EX)
   set_lvb = 1;







  if (set_lvb && !(lockres->l_flags & OCFS2_LOCK_NEEDS_REFRESH))
   lockres->l_ops->set_lvb(lockres);
 }

 gen = ocfs2_prepare_downconvert(lockres, new_level);
 spin_unlock_irqrestore(&lockres->l_lock, flags);
 ret = ocfs2_downconvert_lock(osb, lockres, new_level, set_lvb,
         gen);

leave:
 if (ret)
  mlog_errno(ret);
 return ret;

leave_requeue:
 spin_unlock_irqrestore(&lockres->l_lock, flags);
 ctl->requeue = 1;

 return 0;
}
