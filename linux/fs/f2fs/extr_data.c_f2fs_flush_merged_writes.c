
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int DATA ;
 int META ;
 int NODE ;
 int f2fs_submit_merged_write (struct f2fs_sb_info*,int ) ;

void f2fs_flush_merged_writes(struct f2fs_sb_info *sbi)
{
 f2fs_submit_merged_write(sbi, DATA);
 f2fs_submit_merged_write(sbi, NODE);
 f2fs_submit_merged_write(sbi, META);
}
