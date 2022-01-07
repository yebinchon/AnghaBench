
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {TYPE_2__* s_bdev; } ;
struct ext4_sb_info {scalar_t__ s_kbytes_written; TYPE_1__* s_buddy_cache; } ;
typedef int ssize_t ;
struct TYPE_6__ {int s_sectors_written_start; } ;
struct TYPE_5__ {int bd_part; } ;
struct TYPE_4__ {struct super_block* i_sb; } ;


 TYPE_3__* EXT4_SB (struct super_block*) ;
 int PAGE_SIZE ;
 size_t STAT_WRITE ;
 int part_stat_read (int ,int ) ;
 int * sectors ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t lifetime_write_kbytes_show(struct ext4_sb_info *sbi, char *buf)
{
 struct super_block *sb = sbi->s_buddy_cache->i_sb;

 if (!sb->s_bdev->bd_part)
  return snprintf(buf, PAGE_SIZE, "0\n");
 return snprintf(buf, PAGE_SIZE, "%llu\n",
   (unsigned long long)(sbi->s_kbytes_written +
   ((part_stat_read(sb->s_bdev->bd_part,
      sectors[STAT_WRITE]) -
     EXT4_SB(sb)->s_sectors_written_start) >> 1)));
}
