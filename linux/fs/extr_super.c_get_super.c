
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct block_device {int dummy; } ;


 struct super_block* __get_super (struct block_device*,int) ;

struct super_block *get_super(struct block_device *bdev)
{
 return __get_super(bdev, 0);
}
