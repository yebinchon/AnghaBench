
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_nfs_sync_lockres; } ;


 int EROFS ;
 int LKM_EXMODE ;
 int LKM_PRMODE ;
 int ML_ERROR ;
 int mlog (int ,char*,int) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int ,int ,int ) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

int ocfs2_nfs_sync_lock(struct ocfs2_super *osb, int ex)
{
 int status;
 struct ocfs2_lock_res *lockres = &osb->osb_nfs_sync_lockres;

 if (ocfs2_is_hard_readonly(osb))
  return -EROFS;

 if (ocfs2_mount_local(osb))
  return 0;

 status = ocfs2_cluster_lock(osb, lockres, ex ? LKM_EXMODE : LKM_PRMODE,
        0, 0);
 if (status < 0)
  mlog(ML_ERROR, "lock on nfs sync lock failed %d\n", status);

 return status;
}
