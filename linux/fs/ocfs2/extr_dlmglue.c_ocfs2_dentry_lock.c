
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dentry_lock {int dl_lockres; } ;
struct dentry {int d_sb; struct ocfs2_dentry_lock* d_fsdata; } ;


 int BUG_ON (int) ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int EROFS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,int *,int,int ,int ) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

int ocfs2_dentry_lock(struct dentry *dentry, int ex)
{
 int ret;
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 struct ocfs2_dentry_lock *dl = dentry->d_fsdata;
 struct ocfs2_super *osb = OCFS2_SB(dentry->d_sb);

 BUG_ON(!dl);

 if (ocfs2_is_hard_readonly(osb)) {
  if (ex)
   return -EROFS;
  return 0;
 }

 if (ocfs2_mount_local(osb))
  return 0;

 ret = ocfs2_cluster_lock(osb, &dl->dl_lockres, level, 0, 0);
 if (ret < 0)
  mlog_errno(ret);

 return ret;
}
