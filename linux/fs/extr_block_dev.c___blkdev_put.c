
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gendisk {TYPE_1__* fops; } ;
struct block_device {int bd_mutex; struct block_device* bd_contains; struct gendisk* bd_disk; int * bd_part; int bd_openers; int bd_holders; int bd_part_count; } ;
typedef int fmode_t ;
struct TYPE_2__ {int (* release ) (struct gendisk*,int ) ;} ;


 int WARN_ON_ONCE (int ) ;
 int bdev_write_inode (struct block_device*) ;
 int bdput (struct block_device*) ;
 int disk_put_part (int *) ;
 int kill_bdev (struct block_device*) ;
 int mutex_lock_nested (int *,int) ;
 int mutex_unlock (int *) ;
 int put_disk_and_module (struct gendisk*) ;
 int stub1 (struct gendisk*,int ) ;
 int sync_blockdev (struct block_device*) ;

__attribute__((used)) static void __blkdev_put(struct block_device *bdev, fmode_t mode, int for_part)
{
 struct gendisk *disk = bdev->bd_disk;
 struct block_device *victim = ((void*)0);

 mutex_lock_nested(&bdev->bd_mutex, for_part);
 if (for_part)
  bdev->bd_part_count--;

 if (!--bdev->bd_openers) {
  WARN_ON_ONCE(bdev->bd_holders);
  sync_blockdev(bdev);
  kill_bdev(bdev);

  bdev_write_inode(bdev);
 }
 if (bdev->bd_contains == bdev) {
  if (disk->fops->release)
   disk->fops->release(disk, mode);
 }
 if (!bdev->bd_openers) {
  disk_put_part(bdev->bd_part);
  bdev->bd_part = ((void*)0);
  bdev->bd_disk = ((void*)0);
  if (bdev != bdev->bd_contains)
   victim = bdev->bd_contains;
  bdev->bd_contains = ((void*)0);

  put_disk_and_module(disk);
 }
 mutex_unlock(&bdev->bd_mutex);
 bdput(bdev);
 if (victim)
  __blkdev_put(victim, mode, 1);
}
