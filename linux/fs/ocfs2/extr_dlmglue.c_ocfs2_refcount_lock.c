
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {struct ocfs2_super* l_priv; } ;
struct ocfs2_refcount_tree {struct ocfs2_lock_res rf_lockres; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int EROFS ;
 int mlog_errno (int) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ,int ) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

int ocfs2_refcount_lock(struct ocfs2_refcount_tree *ref_tree, int ex)
{
 int status;
 int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
 struct ocfs2_lock_res *lockres = &ref_tree->rf_lockres;
 struct ocfs2_super *osb = lockres->l_priv;


 if (ocfs2_is_hard_readonly(osb))
  return -EROFS;

 if (ocfs2_mount_local(osb))
  return 0;

 status = ocfs2_cluster_lock(osb, lockres, level, 0, 0);
 if (status < 0)
  mlog_errno(status);

 return status;
}
