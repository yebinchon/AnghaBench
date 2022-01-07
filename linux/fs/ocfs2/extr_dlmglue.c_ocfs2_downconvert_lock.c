
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {int cconn; } ;
struct ocfs2_lock_res {int l_name; int l_lksb; TYPE_1__* l_ops; int l_level; } ;
struct TYPE_2__ {int flags; } ;


 int DLM_LKF_CONVERT ;
 int DLM_LKF_VALBLK ;
 int LOCK_TYPE_USES_LVB ;
 int ML_BASTS ;
 scalar_t__ OCFS2_LOCK_ID_MAX_LEN ;
 int lockres_clear_pending (struct ocfs2_lock_res*,unsigned int,struct ocfs2_super*) ;
 int mlog (int ,char*,int ,int ,int) ;
 int ocfs2_dlm_lock (int ,int,int *,int ,int ,scalar_t__) ;
 int ocfs2_log_dlm_error (char*,int,struct ocfs2_lock_res*) ;
 int ocfs2_recover_from_dlm_error (struct ocfs2_lock_res*,int) ;
 scalar_t__ ocfs2_userspace_stack (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_downconvert_lock(struct ocfs2_super *osb,
      struct ocfs2_lock_res *lockres,
      int new_level,
      int lvb,
      unsigned int generation)
{
 int ret;
 u32 dlm_flags = DLM_LKF_CONVERT;

 mlog(ML_BASTS, "lockres %s, level %d => %d\n", lockres->l_name,
      lockres->l_level, new_level);







 if (ocfs2_userspace_stack(osb) &&
     lockres->l_ops->flags & LOCK_TYPE_USES_LVB)
  lvb = 1;

 if (lvb)
  dlm_flags |= DLM_LKF_VALBLK;

 ret = ocfs2_dlm_lock(osb->cconn,
        new_level,
        &lockres->l_lksb,
        dlm_flags,
        lockres->l_name,
        OCFS2_LOCK_ID_MAX_LEN - 1);
 lockres_clear_pending(lockres, generation, osb);
 if (ret) {
  ocfs2_log_dlm_error("ocfs2_dlm_lock", ret, lockres);
  ocfs2_recover_from_dlm_error(lockres, 1);
  goto bail;
 }

 ret = 0;
bail:
 return ret;
}
