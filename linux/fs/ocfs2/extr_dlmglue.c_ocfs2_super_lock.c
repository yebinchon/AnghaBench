
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_super_lockres; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int EROFS ;
 int mlog_errno (int) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ,int ) ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int) ;
 int ocfs2_complete_lock_res_refresh (struct ocfs2_lock_res*,int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;
 int ocfs2_refresh_slot_info (struct ocfs2_super*) ;
 int ocfs2_should_refresh_lock_res (struct ocfs2_lock_res*) ;
 int ocfs2_track_lock_refresh (struct ocfs2_lock_res*) ;

int ocfs2_super_lock(struct ocfs2_super *osb,
       int ex)
{
 int status = 0;
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 struct ocfs2_lock_res *lockres = &osb->osb_super_lockres;

 if (ocfs2_is_hard_readonly(osb))
  return -EROFS;

 if (ocfs2_mount_local(osb))
  goto bail;

 status = ocfs2_cluster_lock(osb, lockres, level, 0, 0);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }





 status = ocfs2_should_refresh_lock_res(lockres);
 if (status) {
  status = ocfs2_refresh_slot_info(osb);

  ocfs2_complete_lock_res_refresh(lockres, status);

  if (status < 0) {
   ocfs2_cluster_unlock(osb, lockres, level);
   mlog_errno(status);
  }
  ocfs2_track_lock_refresh(lockres);
 }
bail:
 return status;
}
