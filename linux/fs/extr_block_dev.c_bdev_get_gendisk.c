
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct block_device {int bd_inode; int bd_dev; } ;


 struct gendisk* get_gendisk (int ,int*) ;
 scalar_t__ inode_unhashed (int ) ;
 int put_disk_and_module (struct gendisk*) ;

__attribute__((used)) static struct gendisk *bdev_get_gendisk(struct block_device *bdev, int *partno)
{
 struct gendisk *disk = get_gendisk(bdev->bd_dev, partno);

 if (!disk)
  return ((void*)0);
 if (inode_unhashed(bdev->bd_inode)) {
  put_disk_and_module(disk);
  return ((void*)0);
 }
 return disk;
}
