
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int EACCES ;
 struct block_device* ERR_PTR (int) ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct block_device*) ;
 scalar_t__ bdev_read_only (struct block_device*) ;
 int blkdev_get (struct block_device*,int,void*) ;
 int blkdev_put (struct block_device*,int) ;
 struct block_device* lookup_bdev (char const*) ;

struct block_device *blkdev_get_by_path(const char *path, fmode_t mode,
     void *holder)
{
 struct block_device *bdev;
 int err;

 bdev = lookup_bdev(path);
 if (IS_ERR(bdev))
  return bdev;

 err = blkdev_get(bdev, mode, holder);
 if (err)
  return ERR_PTR(err);

 if ((mode & FMODE_WRITE) && bdev_read_only(bdev)) {
  blkdev_put(bdev, mode);
  return ERR_PTR(-EACCES);
 }

 return bdev;
}
