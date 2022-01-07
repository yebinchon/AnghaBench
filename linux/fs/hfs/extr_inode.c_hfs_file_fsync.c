
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_bdev; } ;
struct inode {struct super_block* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int loff_t ;
struct TYPE_4__ {int mdb_work; } ;
struct TYPE_3__ {struct inode* host; } ;


 TYPE_2__* HFS_SB (struct super_block*) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 int flush_delayed_work (int *) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int sync_blockdev (int ) ;
 int write_inode_now (struct inode*,int ) ;

__attribute__((used)) static int hfs_file_fsync(struct file *filp, loff_t start, loff_t end,
     int datasync)
{
 struct inode *inode = filp->f_mapping->host;
 struct super_block * sb;
 int ret, err;

 ret = file_write_and_wait_range(filp, start, end);
 if (ret)
  return ret;
 inode_lock(inode);


 ret = write_inode_now(inode, 0);


 sb = inode->i_sb;
 flush_delayed_work(&HFS_SB(sb)->mdb_work);

 err = sync_blockdev(sb->s_bdev);
 if (!ret)
  ret = err;
 inode_unlock(inode);
 return ret;
}
