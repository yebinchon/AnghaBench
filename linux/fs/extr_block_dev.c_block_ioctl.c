
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; int f_mode; } ;
struct block_device {int dummy; } ;
typedef int fmode_t ;


 int FMODE_NDELAY ;
 struct block_device* I_BDEV (int ) ;
 int O_NDELAY ;
 int bdev_file_inode (struct file*) ;
 long blkdev_ioctl (struct block_device*,int ,unsigned int,unsigned long) ;

__attribute__((used)) static long block_ioctl(struct file *file, unsigned cmd, unsigned long arg)
{
 struct block_device *bdev = I_BDEV(bdev_file_inode(file));
 fmode_t mode = file->f_mode;





 if (file->f_flags & O_NDELAY)
  mode |= FMODE_NDELAY;
 else
  mode &= ~FMODE_NDELAY;

 return blkdev_ioctl(bdev, mode, cmd, arg);
}
