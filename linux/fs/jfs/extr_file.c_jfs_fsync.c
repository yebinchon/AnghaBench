
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_state; int i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int log; } ;
struct TYPE_3__ {struct inode* host; } ;


 int EIO ;
 int I_DIRTY_ALL ;
 int I_DIRTY_DATASYNC ;
 TYPE_2__* JFS_SBI (int ) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int jfs_commit_inode (struct inode*,int) ;
 int jfs_flush_journal (int ,int) ;

int jfs_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 struct inode *inode = file->f_mapping->host;
 int rc = 0;

 rc = file_write_and_wait_range(file, start, end);
 if (rc)
  return rc;

 inode_lock(inode);
 if (!(inode->i_state & I_DIRTY_ALL) ||
     (datasync && !(inode->i_state & I_DIRTY_DATASYNC))) {

  jfs_flush_journal(JFS_SBI(inode->i_sb)->log, 1);
  inode_unlock(inode);
  return rc;
 }

 rc |= jfs_commit_inode(inode, 1);
 inode_unlock(inode);

 return rc ? -EIO : 0;
}
