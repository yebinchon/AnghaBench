
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {scalar_t__ bd_holders; int bd_write_holder; int bd_mutex; int bd_disk; TYPE_1__* bd_contains; int * bd_holder; } ;
typedef int fmode_t ;
struct TYPE_2__ {scalar_t__ bd_holders; int * bd_holder; } ;


 int DISK_EVENT_MEDIA_CHANGE ;
 int FMODE_EXCL ;
 int WARN_ON_ONCE (int) ;
 int __blkdev_put (struct block_device*,int,int ) ;
 int bdev_lock ;
 int disk_flush_events (int ,int ) ;
 int disk_unblock_events (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void blkdev_put(struct block_device *bdev, fmode_t mode)
{
 mutex_lock(&bdev->bd_mutex);

 if (mode & FMODE_EXCL) {
  bool bdev_free;






  spin_lock(&bdev_lock);

  WARN_ON_ONCE(--bdev->bd_holders < 0);
  WARN_ON_ONCE(--bdev->bd_contains->bd_holders < 0);


  if ((bdev_free = !bdev->bd_holders))
   bdev->bd_holder = ((void*)0);
  if (!bdev->bd_contains->bd_holders)
   bdev->bd_contains->bd_holder = ((void*)0);

  spin_unlock(&bdev_lock);





  if (bdev_free && bdev->bd_write_holder) {
   disk_unblock_events(bdev->bd_disk);
   bdev->bd_write_holder = 0;
  }
 }






 disk_flush_events(bdev->bd_disk, DISK_EVENT_MEDIA_CHANGE);

 mutex_unlock(&bdev->bd_mutex);

 __blkdev_put(bdev, mode, 0);
}
