
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct block_device {int dummy; } ;
typedef int loff_t ;


 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 struct block_device* I_BDEV (struct inode*) ;
 struct inode* bdev_file_inode (struct file*) ;
 int blkdev_issue_flush (struct block_device*,int ,int *) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;

int blkdev_fsync(struct file *filp, loff_t start, loff_t end, int datasync)
{
 struct inode *bd_inode = bdev_file_inode(filp);
 struct block_device *bdev = I_BDEV(bd_inode);
 int error;

 error = file_write_and_wait_range(filp, start, end);
 if (error)
  return error;






 error = blkdev_issue_flush(bdev, GFP_KERNEL, ((void*)0));
 if (error == -EOPNOTSUPP)
  error = 0;

 return error;
}
