
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; struct ocfs2_lock_res ip_rw_lockres; } ;


 int DLM_LOCK_EX ;
 int DLM_LOCK_PR ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog (int ,char*,unsigned long long,char*) ;
 int ocfs2_cluster_unlock (struct ocfs2_super*,struct ocfs2_lock_res*,int) ;
 int ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_rw_unlock(struct inode *inode, int write)
{
 int level = write ? DLM_LOCK_EX : DLM_LOCK_PR;
 struct ocfs2_lock_res *lockres = &OCFS2_I(inode)->ip_rw_lockres;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);

 mlog(0, "inode %llu drop %s RW lock\n",
      (unsigned long long)OCFS2_I(inode)->ip_blkno,
      write ? "EXMODE" : "PRMODE");

 if (!ocfs2_mount_local(osb))
  ocfs2_cluster_unlock(osb, lockres, level);
}
