
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;


 int bdev_get_queue (struct block_device*) ;
 scalar_t__ bdev_is_zoned (struct block_device*) ;
 scalar_t__ blk_queue_discard (int ) ;

__attribute__((used)) static inline bool f2fs_bdev_support_discard(struct block_device *bdev)
{
 return blk_queue_discard(bdev_get_queue(bdev)) ||
        bdev_is_zoned(bdev);
}
