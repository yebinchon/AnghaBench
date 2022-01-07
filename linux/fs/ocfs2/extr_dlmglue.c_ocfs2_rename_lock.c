
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_rename_lockres; } ;


 int DLM_LOCK_EX ;
 int EROFS ;
 int mlog_errno (int) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int ,int ,int ) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

int ocfs2_rename_lock(struct ocfs2_super *osb)
{
 int status;
 struct ocfs2_lock_res *lockres = &osb->osb_rename_lockres;

 if (ocfs2_is_hard_readonly(osb))
  return -EROFS;

 if (ocfs2_mount_local(osb))
  return 0;

 status = ocfs2_cluster_lock(osb, lockres, DLM_LOCK_EX, 0, 0);
 if (status < 0)
  mlog_errno(status);

 return status;
}
