
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; int f_mode; int f_mapping; int f_wb_err; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_mapping; } ;


 int ENOMEM ;
 int FMODE_EXCL ;
 int FMODE_NDELAY ;
 int FMODE_NOWAIT ;
 int FMODE_WRITE_IOCTL ;
 int O_ACCMODE ;
 int O_EXCL ;
 int O_LARGEFILE ;
 int O_NDELAY ;
 struct block_device* bd_acquire (struct inode*) ;
 int blkdev_get (struct block_device*,int ,struct file*) ;
 int filemap_sample_wb_err (int ) ;

__attribute__((used)) static int blkdev_open(struct inode * inode, struct file * filp)
{
 struct block_device *bdev;







 filp->f_flags |= O_LARGEFILE;

 filp->f_mode |= FMODE_NOWAIT;

 if (filp->f_flags & O_NDELAY)
  filp->f_mode |= FMODE_NDELAY;
 if (filp->f_flags & O_EXCL)
  filp->f_mode |= FMODE_EXCL;
 if ((filp->f_flags & O_ACCMODE) == 3)
  filp->f_mode |= FMODE_WRITE_IOCTL;

 bdev = bd_acquire(inode);
 if (bdev == ((void*)0))
  return -ENOMEM;

 filp->f_mapping = bdev->bd_inode->i_mapping;
 filp->f_wb_err = filemap_sample_wb_err(filp->f_mapping);

 return blkdev_get(bdev, filp->f_mode, filp);
}
