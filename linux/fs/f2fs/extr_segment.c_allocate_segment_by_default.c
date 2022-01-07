
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct curseg_info {scalar_t__ alloc_type; } ;


 int CP_CRC_RECOVERY_FLAG ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 int CURSEG_WARM_NODE ;
 scalar_t__ LFS ;
 int SBI_CP_DISABLED ;
 int change_curseg (struct f2fs_sb_info*,int) ;
 scalar_t__ f2fs_need_SSR (struct f2fs_sb_info*) ;
 scalar_t__ get_ssr_segment (struct f2fs_sb_info*,int) ;
 scalar_t__ is_next_segment_free (struct f2fs_sb_info*,int) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int is_set_ckpt_flags (struct f2fs_sb_info*,int ) ;
 scalar_t__ likely (int) ;
 int new_curseg (struct f2fs_sb_info*,int,int) ;
 int stat_inc_seg_type (struct f2fs_sb_info*,struct curseg_info*) ;

__attribute__((used)) static void allocate_segment_by_default(struct f2fs_sb_info *sbi,
      int type, bool force)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);

 if (force)
  new_curseg(sbi, type, 1);
 else if (!is_set_ckpt_flags(sbi, CP_CRC_RECOVERY_FLAG) &&
     type == CURSEG_WARM_NODE)
  new_curseg(sbi, type, 0);
 else if (curseg->alloc_type == LFS && is_next_segment_free(sbi, type) &&
   likely(!is_sbi_flag_set(sbi, SBI_CP_DISABLED)))
  new_curseg(sbi, type, 0);
 else if (f2fs_need_SSR(sbi) && get_ssr_segment(sbi, type))
  change_curseg(sbi, type);
 else
  new_curseg(sbi, type, 0);

 stat_inc_seg_type(sbi, curseg);
}
