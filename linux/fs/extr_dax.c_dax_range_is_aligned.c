
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;


 int IS_ALIGNED (unsigned int,unsigned short) ;
 unsigned short bdev_logical_block_size (struct block_device*) ;

__attribute__((used)) static bool dax_range_is_aligned(struct block_device *bdev,
     unsigned int offset, unsigned int length)
{
 unsigned short sector_size = bdev_logical_block_size(bdev);

 if (!IS_ALIGNED(offset, sector_size))
  return 0;
 if (!IS_ALIGNED(length, sector_size))
  return 0;

 return 1;
}
