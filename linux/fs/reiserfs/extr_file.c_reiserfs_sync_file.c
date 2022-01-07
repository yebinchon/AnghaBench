
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {TYPE_2__* i_sb; int i_mapping; int i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_6__ {int s_bdev; } ;
struct TYPE_5__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int EIO ;
 int GFP_KERNEL ;
 int S_ISREG (int ) ;
 int blkdev_issue_flush (int ,int ,int *) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ reiserfs_barrier_flush (TYPE_2__*) ;
 int reiserfs_commit_for_inode (struct inode*) ;
 int reiserfs_write_lock (TYPE_2__*) ;
 int reiserfs_write_unlock (TYPE_2__*) ;
 int sync_mapping_buffers (int ) ;

__attribute__((used)) static int reiserfs_sync_file(struct file *filp, loff_t start, loff_t end,
         int datasync)
{
 struct inode *inode = filp->f_mapping->host;
 int err;
 int barrier_done;

 err = file_write_and_wait_range(filp, start, end);
 if (err)
  return err;

 inode_lock(inode);
 BUG_ON(!S_ISREG(inode->i_mode));
 err = sync_mapping_buffers(inode->i_mapping);
 reiserfs_write_lock(inode->i_sb);
 barrier_done = reiserfs_commit_for_inode(inode);
 reiserfs_write_unlock(inode->i_sb);
 if (barrier_done != 1 && reiserfs_barrier_flush(inode->i_sb))
  blkdev_issue_flush(inode->i_sb->s_bdev, GFP_KERNEL, ((void*)0));
 inode_unlock(inode);
 if (barrier_done < 0)
  return barrier_done;
 return (err < 0) ? -EIO : 0;
}
