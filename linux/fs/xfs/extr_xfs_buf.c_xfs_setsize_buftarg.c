
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bt_meta_sectorsize; unsigned int bt_meta_sectormask; int bt_bdev; void* bt_logical_sectormask; void* bt_logical_sectorsize; int bt_mount; } ;
typedef TYPE_1__ xfs_buftarg_t ;


 int EINVAL ;
 void* bdev_logical_block_size (int ) ;
 scalar_t__ set_blocksize (int ,unsigned int) ;
 int xfs_warn (int ,char*,unsigned int,int ) ;

int
xfs_setsize_buftarg(
 xfs_buftarg_t *btp,
 unsigned int sectorsize)
{

 btp->bt_meta_sectorsize = sectorsize;
 btp->bt_meta_sectormask = sectorsize - 1;

 if (set_blocksize(btp->bt_bdev, sectorsize)) {
  xfs_warn(btp->bt_mount,
   "Cannot set_blocksize to %u on device %pg",
   sectorsize, btp->bt_bdev);
  return -EINVAL;
 }


 btp->bt_logical_sectorsize = bdev_logical_block_size(btp->bt_bdev);
 btp->bt_logical_sectormask = bdev_logical_block_size(btp->bt_bdev) - 1;

 return 0;
}
