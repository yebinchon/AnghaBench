
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {unsigned long s_blocksize_bits; struct block_device* s_bdev; } ;
struct block_device {int bd_inode; } ;


 int CDROM_LAST_WRITTEN ;
 unsigned long i_size_read (int ) ;
 scalar_t__ ioctl_by_bdev (struct block_device*,int ,unsigned long) ;

unsigned long udf_get_last_block(struct super_block *sb)
{
 struct block_device *bdev = sb->s_bdev;
 unsigned long lblock = 0;





 if (ioctl_by_bdev(bdev, CDROM_LAST_WRITTEN, (unsigned long) &lblock) ||
     lblock == 0)
  lblock = i_size_read(bdev->bd_inode) >> sb->s_blocksize_bits;

 if (lblock)
  return lblock - 1;
 else
  return 0;
}
