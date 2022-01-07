
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int current_reserved_blocks; } ;
struct f2fs_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t current_reserved_blocks_show(struct f2fs_attr *a,
     struct f2fs_sb_info *sbi, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u\n", sbi->current_reserved_blocks);
}
