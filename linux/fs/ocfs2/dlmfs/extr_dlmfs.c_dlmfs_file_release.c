
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_mode; } ;
struct file {struct dlmfs_filp_private* private_data; } ;
struct dlmfs_inode_private {int ip_lockres; } ;
struct dlmfs_filp_private {int fp_lock_level; } ;


 int BUG () ;
 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 int DLM_LOCK_IV ;
 scalar_t__ S_ISDIR (int ) ;
 int kfree (struct dlmfs_filp_private*) ;
 int mlog (int ,char*,int ) ;
 int user_dlm_cluster_unlock (int *,int) ;

__attribute__((used)) static int dlmfs_file_release(struct inode *inode,
         struct file *file)
{
 int level;
 struct dlmfs_inode_private *ip = DLMFS_I(inode);
 struct dlmfs_filp_private *fp = file->private_data;

 if (S_ISDIR(inode->i_mode))
  BUG();

 mlog(0, "close called on inode %lu\n", inode->i_ino);

 if (fp) {
  level = fp->fp_lock_level;
  if (level != DLM_LOCK_IV)
   user_dlm_cluster_unlock(&ip->ip_lockres, level);

  kfree(fp);
  file->private_data = ((void*)0);
 }

 return 0;
}
