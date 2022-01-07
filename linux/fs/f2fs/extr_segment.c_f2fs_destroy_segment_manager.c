
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sm_info {int dummy; } ;
struct f2fs_sb_info {int * sm_info; } ;


 struct f2fs_sm_info* SM_I (struct f2fs_sb_info*) ;
 int destroy_curseg (struct f2fs_sb_info*) ;
 int destroy_dirty_segmap (struct f2fs_sb_info*) ;
 int destroy_discard_cmd_control (struct f2fs_sb_info*) ;
 int destroy_free_segmap (struct f2fs_sb_info*) ;
 int destroy_sit_info (struct f2fs_sb_info*) ;
 int f2fs_destroy_flush_cmd_control (struct f2fs_sb_info*,int) ;
 int kvfree (struct f2fs_sm_info*) ;

void f2fs_destroy_segment_manager(struct f2fs_sb_info *sbi)
{
 struct f2fs_sm_info *sm_info = SM_I(sbi);

 if (!sm_info)
  return;
 f2fs_destroy_flush_cmd_control(sbi, 1);
 destroy_discard_cmd_control(sbi);
 destroy_dirty_segmap(sbi);
 destroy_curseg(sbi);
 destroy_free_segmap(sbi);
 destroy_sit_info(sbi);
 sbi->sm_info = ((void*)0);
 kvfree(sm_info);
}
