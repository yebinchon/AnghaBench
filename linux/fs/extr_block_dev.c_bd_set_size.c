
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_inode; } ;
typedef int loff_t ;


 int i_size_write (int ,int ) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;

void bd_set_size(struct block_device *bdev, loff_t size)
{
 inode_lock(bdev->bd_inode);
 i_size_write(bdev->bd_inode, size);
 inode_unlock(bdev->bd_inode);
}
