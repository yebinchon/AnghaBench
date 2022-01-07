
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_2__* s_bdev; } ;
struct ext4_sb_info {int s_sectors_written_start; TYPE_1__* s_buddy_cache; } ;
typedef int ssize_t ;
struct TYPE_4__ {int bd_part; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;


 int PAGE_SIZE ;
 size_t STAT_WRITE ;
 int part_stat_read (int ,int ) ;
 int * sectors ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t session_write_kbytes_show(struct ext4_sb_info *sbi, char *buf)
{
 struct super_block *sb = sbi->s_buddy_cache->i_sb;

 if (!sb->s_bdev->bd_part)
  return snprintf(buf, PAGE_SIZE, "0\n");
 return snprintf(buf, PAGE_SIZE, "%lu\n",
   (part_stat_read(sb->s_bdev->bd_part,
     sectors[STAT_WRITE]) -
    sbi->s_sectors_written_start) >> 1);
}
