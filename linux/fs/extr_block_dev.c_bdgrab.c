
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int bd_inode; } ;


 int ihold (int ) ;

struct block_device *bdgrab(struct block_device *bdev)
{
 ihold(bdev->bd_inode);
 return bdev;
}
