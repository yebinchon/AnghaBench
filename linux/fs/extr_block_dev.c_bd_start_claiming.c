
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct block_device {void* bd_claiming; } ;


 int ENOMEM ;
 int ENXIO ;
 struct block_device* ERR_PTR (int) ;
 int bd_prepare_to_claim (struct block_device*,struct block_device*,void*) ;
 struct gendisk* bdev_get_gendisk (struct block_device*,int*) ;
 int bdev_lock ;
 struct block_device* bdget_disk (struct gendisk*,int ) ;
 struct block_device* bdgrab (struct block_device*) ;
 int bdput (struct block_device*) ;
 int might_sleep () ;
 int put_disk_and_module (struct gendisk*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct block_device *bd_start_claiming(struct block_device *bdev, void *holder)
{
 struct gendisk *disk;
 struct block_device *whole;
 int partno, err;

 might_sleep();





 disk = bdev_get_gendisk(bdev, &partno);
 if (!disk)
  return ERR_PTR(-ENXIO);
 if (partno)
  whole = bdget_disk(disk, 0);
 else
  whole = bdgrab(bdev);

 put_disk_and_module(disk);
 if (!whole)
  return ERR_PTR(-ENOMEM);


 spin_lock(&bdev_lock);

 err = bd_prepare_to_claim(bdev, whole, holder);
 if (err == 0) {
  whole->bd_claiming = holder;
  spin_unlock(&bdev_lock);
  return whole;
 } else {
  spin_unlock(&bdev_lock);
  bdput(whole);
  return ERR_PTR(err);
 }
}
