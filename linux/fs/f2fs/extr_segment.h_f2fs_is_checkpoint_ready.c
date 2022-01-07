
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int SBI_CP_DISABLED ;
 int has_not_enough_free_secs (struct f2fs_sb_info*,int ,int ) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline bool f2fs_is_checkpoint_ready(struct f2fs_sb_info *sbi)
{
 if (likely(!is_sbi_flag_set(sbi, SBI_CP_DISABLED)))
  return 1;
 if (likely(!has_not_enough_free_secs(sbi, 0, 0)))
  return 1;
 return 0;
}
