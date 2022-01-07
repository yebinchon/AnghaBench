
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int reiserfs_commit_for_inode (struct inode*) ;
 int reiserfs_write_lock (int ) ;
 int reiserfs_write_unlock (int ) ;

__attribute__((used)) static int reiserfs_dir_fsync(struct file *filp, loff_t start, loff_t end,
         int datasync)
{
 struct inode *inode = filp->f_mapping->host;
 int err;

 err = file_write_and_wait_range(filp, start, end);
 if (err)
  return err;

 inode_lock(inode);
 reiserfs_write_lock(inode->i_sb);
 err = reiserfs_commit_for_inode(inode);
 reiserfs_write_unlock(inode->i_sb);
 inode_unlock(inode);
 if (err < 0)
  return err;
 return 0;
}
