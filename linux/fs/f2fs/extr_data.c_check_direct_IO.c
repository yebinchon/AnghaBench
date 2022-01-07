
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iov_iter {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_blkbits; } ;
struct block_device {int dummy; } ;
typedef unsigned long loff_t ;
struct TYPE_2__ {struct block_device* s_bdev; } ;


 int EINVAL ;
 unsigned int READ_ONCE (int ) ;
 int bdev_logical_block_size (struct block_device*) ;
 unsigned int blksize_bits (int ) ;
 unsigned long iov_iter_alignment (struct iov_iter*) ;

__attribute__((used)) static int check_direct_IO(struct inode *inode, struct iov_iter *iter,
      loff_t offset)
{
 unsigned i_blkbits = READ_ONCE(inode->i_blkbits);
 unsigned blkbits = i_blkbits;
 unsigned blocksize_mask = (1 << blkbits) - 1;
 unsigned long align = offset | iov_iter_alignment(iter);
 struct block_device *bdev = inode->i_sb->s_bdev;

 if (align & blocksize_mask) {
  if (bdev)
   blkbits = blksize_bits(bdev_logical_block_size(bdev));
  blocksize_mask = (1 << blkbits) - 1;
  if (align & blocksize_mask)
   return -EINVAL;
  return 1;
 }
 return 0;
}
