
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_bdev; scalar_t__ s_mtd; } ;


 int EIO ;
 int romfs_blk_read (struct super_block*,unsigned long,void*,size_t) ;
 size_t romfs_maxsize (struct super_block*) ;
 int romfs_mtd_read (struct super_block*,unsigned long,void*,size_t) ;

int romfs_dev_read(struct super_block *sb, unsigned long pos,
     void *buf, size_t buflen)
{
 size_t limit;

 limit = romfs_maxsize(sb);
 if (pos >= limit)
  return -EIO;
 if (buflen > limit - pos)
  buflen = limit - pos;
 return -EIO;
}
