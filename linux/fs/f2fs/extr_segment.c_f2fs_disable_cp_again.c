
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ block_t ;
struct TYPE_2__ {scalar_t__ unusable_cap; } ;


 int EAGAIN ;
 TYPE_1__ F2FS_OPTION (struct f2fs_sb_info*) ;
 int SBI_CP_DISABLED_QUICK ;
 int dirty_segments (struct f2fs_sb_info*) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int overprovision_segments (struct f2fs_sb_info*) ;
 int reserved_segments (struct f2fs_sb_info*) ;

int f2fs_disable_cp_again(struct f2fs_sb_info *sbi, block_t unusable)
{
 int ovp_hole_segs =
  (overprovision_segments(sbi) - reserved_segments(sbi));
 if (unusable > F2FS_OPTION(sbi).unusable_cap)
  return -EAGAIN;
 if (is_sbi_flag_set(sbi, SBI_CP_DISABLED_QUICK) &&
  dirty_segments(sbi) > ovp_hole_segs)
  return -EAGAIN;
 return 0;
}
