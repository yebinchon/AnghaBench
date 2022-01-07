
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int flags; } ;
struct block_device {int bd_write_holder; int bd_mutex; struct gendisk* bd_disk; } ;
typedef int fmode_t ;


 int FMODE_EXCL ;
 int FMODE_WRITE ;
 int GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int PTR_ERR (struct block_device*) ;
 int WARN_ON_ONCE (int) ;
 int __blkdev_get (struct block_device*,int,int ) ;
 int bd_abort_claiming (struct block_device*,struct block_device*,void*) ;
 int bd_finish_claiming (struct block_device*,struct block_device*,void*) ;
 struct block_device* bd_start_claiming (struct block_device*,void*) ;
 int bdput (struct block_device*) ;
 int disk_block_events (struct gendisk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int blkdev_get(struct block_device *bdev, fmode_t mode, void *holder)
{
 struct block_device *whole = ((void*)0);
 int res;

 WARN_ON_ONCE((mode & FMODE_EXCL) && !holder);

 if ((mode & FMODE_EXCL) && holder) {
  whole = bd_start_claiming(bdev, holder);
  if (IS_ERR(whole)) {
   bdput(bdev);
   return PTR_ERR(whole);
  }
 }

 res = __blkdev_get(bdev, mode, 0);

 if (whole) {
  struct gendisk *disk = whole->bd_disk;


  mutex_lock(&bdev->bd_mutex);
  if (!res)
   bd_finish_claiming(bdev, whole, holder);
  else
   bd_abort_claiming(bdev, whole, holder);







  if (!res && (mode & FMODE_WRITE) && !bdev->bd_write_holder &&
      (disk->flags & GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE)) {
   bdev->bd_write_holder = 1;
   disk_block_events(disk);
  }

  mutex_unlock(&bdev->bd_mutex);
  bdput(whole);
 }

 return res;
}
