
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mapping; struct block_device* i_bdev; int i_rdev; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_mapping; } ;


 int bd_forget (struct inode*) ;
 int bdev_lock ;
 struct block_device* bdget (int ) ;
 int bdgrab (struct block_device*) ;
 int inode_unhashed (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct block_device *bd_acquire(struct inode *inode)
{
 struct block_device *bdev;

 spin_lock(&bdev_lock);
 bdev = inode->i_bdev;
 if (bdev && !inode_unhashed(bdev->bd_inode)) {
  bdgrab(bdev);
  spin_unlock(&bdev_lock);
  return bdev;
 }
 spin_unlock(&bdev_lock);







 if (bdev)
  bd_forget(inode);

 bdev = bdget(inode->i_rdev);
 if (bdev) {
  spin_lock(&bdev_lock);
  if (!inode->i_bdev) {






   bdgrab(bdev);
   inode->i_bdev = bdev;
   inode->i_mapping = bdev->bd_inode->i_mapping;
  }
  spin_unlock(&bdev_lock);
 }
 return bdev;
}
