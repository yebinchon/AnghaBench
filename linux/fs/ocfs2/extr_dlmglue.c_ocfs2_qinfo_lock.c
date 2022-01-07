
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int dqi_sb; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; struct ocfs2_lock_res dqi_gqlock; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int EROFS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ,int ) ;
 int ocfs2_complete_lock_res_refresh (struct ocfs2_lock_res*,int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_qinfo_unlock (struct ocfs2_mem_dqinfo*,int) ;
 int ocfs2_refresh_qinfo (struct ocfs2_mem_dqinfo*) ;
 int ocfs2_should_refresh_lock_res (struct ocfs2_lock_res*) ;

int ocfs2_qinfo_lock(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
 struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
 struct ocfs2_super *osb = OCFS2_SB(oinfo->dqi_gi.dqi_sb);
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 int status = 0;


 if (ocfs2_is_hard_readonly(osb)) {
  if (ex)
   status = -EROFS;
  goto bail;
 }
 if (ocfs2_mount_local(osb))
  goto bail;

 status = ocfs2_cluster_lock(osb, lockres, level, 0, 0);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }
 if (!ocfs2_should_refresh_lock_res(lockres))
  goto bail;

 status = ocfs2_refresh_qinfo(oinfo);
 if (status)
  ocfs2_qinfo_unlock(oinfo, ex);
 ocfs2_complete_lock_res_refresh(lockres, status);
bail:
 return status;
}
