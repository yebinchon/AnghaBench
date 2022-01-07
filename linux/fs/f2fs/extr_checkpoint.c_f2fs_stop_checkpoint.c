
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int CP_ERROR_FLAG ;
 int f2fs_build_fault_attr (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_flush_merged_writes (struct f2fs_sb_info*) ;
 int set_ckpt_flags (struct f2fs_sb_info*,int ) ;

void f2fs_stop_checkpoint(struct f2fs_sb_info *sbi, bool end_io)
{
 f2fs_build_fault_attr(sbi, 0, 0);
 set_ckpt_flags(sbi, CP_ERROR_FLAG);
 if (!end_io)
  f2fs_flush_merged_writes(sbi);
}
