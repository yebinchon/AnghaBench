
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_bdev; scalar_t__ s_mtd; } ;
typedef int ssize_t ;


 int EIO ;
 int romfs_blk_strnlen (struct super_block*,unsigned long,size_t) ;
 size_t romfs_maxsize (struct super_block*) ;
 int romfs_mtd_strnlen (struct super_block*,unsigned long,size_t) ;

ssize_t romfs_dev_strnlen(struct super_block *sb,
     unsigned long pos, size_t maxlen)
{
 size_t limit;

 limit = romfs_maxsize(sb);
 if (pos >= limit)
  return -EIO;
 if (maxlen > limit - pos)
  maxlen = limit - pos;
 return -EIO;
}
