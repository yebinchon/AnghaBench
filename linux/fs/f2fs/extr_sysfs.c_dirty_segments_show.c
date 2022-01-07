
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 scalar_t__ dirty_segments (struct f2fs_sb_info*) ;
 int snprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t dirty_segments_show(struct f2fs_attr *a,
  struct f2fs_sb_info *sbi, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%llu\n",
  (unsigned long long)(dirty_segments(sbi)));
}
