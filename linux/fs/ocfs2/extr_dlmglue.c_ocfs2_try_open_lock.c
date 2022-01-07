
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {struct ocfs2_lock_res ip_open_lockres; scalar_t__ ip_blkno; } ;


 int DLM_LKF_NOQUEUE ;
 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 int EROFS ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog (int ,char*,unsigned long long,char*) ;
 int ocfs2_cluster_lock (struct ocfs2_super*,struct ocfs2_lock_res*,int,int ,int ) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

int ocfs2_try_open_lock(struct inode *inode, int write)
{
 int status = 0, level;
 struct ocfs2_lock_res *lockres;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 mlog(0, "inode %llu try to take %s open lock\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno,
      write ? "EXMODE" : "PRMODE");

 if (ocfs2_is_hard_readonly(osb)) {
  if (write)
   status = -EROFS;
  goto out;
 }

 if (ocfs2_mount_local(osb))
  goto out;

 lockres = &OCFS2_I(inode)->ip_open_lockres;

 level = write ? DLM_LOCK_EX : DLM_LOCK_PR;







 status = ocfs2_cluster_lock(osb, lockres, level, DLM_LKF_NOQUEUE, 0);

out:
 return status;
}
