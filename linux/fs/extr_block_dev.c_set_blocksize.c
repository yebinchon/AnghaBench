
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int bd_block_size; TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_blkbits; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int bdev_logical_block_size (struct block_device*) ;
 int blksize_bits (int) ;
 int is_power_of_2 (int) ;
 int kill_bdev (struct block_device*) ;
 int sync_blockdev (struct block_device*) ;

int set_blocksize(struct block_device *bdev, int size)
{

 if (size > PAGE_SIZE || size < 512 || !is_power_of_2(size))
  return -EINVAL;


 if (size < bdev_logical_block_size(bdev))
  return -EINVAL;


 if (bdev->bd_block_size != size) {
  sync_blockdev(bdev);
  bdev->bd_block_size = size;
  bdev->bd_inode->i_blkbits = blksize_bits(size);
  kill_bdev(bdev);
 }
 return 0;
}
