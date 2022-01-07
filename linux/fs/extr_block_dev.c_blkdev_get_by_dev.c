
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;
typedef int dev_t ;


 int ENOMEM ;
 struct block_device* ERR_PTR (int) ;
 struct block_device* bdget (int ) ;
 int blkdev_get (struct block_device*,int ,void*) ;

struct block_device *blkdev_get_by_dev(dev_t dev, fmode_t mode, void *holder)
{
 struct block_device *bdev;
 int err;

 bdev = bdget(dev);
 if (!bdev)
  return ERR_PTR(-ENOMEM);

 err = blkdev_get(bdev, mode, holder);
 if (err)
  return ERR_PTR(err);

 return bdev;
}
