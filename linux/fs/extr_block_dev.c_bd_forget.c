
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; int * i_mapping; struct block_device* i_bdev; int i_sb; } ;
struct block_device {int dummy; } ;


 int bdev_lock ;
 int bdput (struct block_device*) ;
 int sb_is_blkdev_sb (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void bd_forget(struct inode *inode)
{
 struct block_device *bdev = ((void*)0);

 spin_lock(&bdev_lock);
 if (!sb_is_blkdev_sb(inode->i_sb))
  bdev = inode->i_bdev;
 inode->i_bdev = ((void*)0);
 inode->i_mapping = &inode->i_data;
 spin_unlock(&bdev_lock);

 if (bdev)
  bdput(bdev);
}
