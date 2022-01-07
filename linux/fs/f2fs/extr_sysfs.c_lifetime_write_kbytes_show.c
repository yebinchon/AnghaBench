
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_bdev; } ;
struct f2fs_sb_info {scalar_t__ kbytes_written; struct super_block* sb; } ;
struct f2fs_attr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bd_part; } ;


 scalar_t__ BD_PART_WRITTEN (struct f2fs_sb_info*) ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t lifetime_write_kbytes_show(struct f2fs_attr *a,
  struct f2fs_sb_info *sbi, char *buf)
{
 struct super_block *sb = sbi->sb;

 if (!sb->s_bdev->bd_part)
  return snprintf(buf, PAGE_SIZE, "0\n");

 return snprintf(buf, PAGE_SIZE, "%llu\n",
  (unsigned long long)(sbi->kbytes_written +
   BD_PART_WRITTEN(sbi)));
}
