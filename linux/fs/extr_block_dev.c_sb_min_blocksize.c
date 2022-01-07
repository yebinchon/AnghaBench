
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_bdev; } ;


 int bdev_logical_block_size (int ) ;
 int sb_set_blocksize (struct super_block*,int) ;

int sb_min_blocksize(struct super_block *sb, int size)
{
 int minsize = bdev_logical_block_size(sb->s_bdev);
 if (size < minsize)
  size = minsize;
 return sb_set_blocksize(sb, size);
}
