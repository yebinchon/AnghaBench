
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct block_device {int dummy; } ;


 struct block_device* I_BDEV (int ) ;
 int bdev_file_inode (struct file*) ;
 int blkdev_put (struct block_device*,int ) ;

__attribute__((used)) static int blkdev_close(struct inode * inode, struct file * filp)
{
 struct block_device *bdev = I_BDEV(bdev_file_inode(filp));
 blkdev_put(bdev, filp->f_mode);
 return 0;
}
