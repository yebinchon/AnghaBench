
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int CP_FASTBOOT ;
 int CP_SYNC ;
 int CP_UMOUNT ;
 int FASTBOOT ;
 int SBI_IS_CLOSE ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline int __get_cp_reason(struct f2fs_sb_info *sbi)
{
 int reason = CP_SYNC;

 if (test_opt(sbi, FASTBOOT))
  reason = CP_FASTBOOT;
 if (is_sbi_flag_set(sbi, SBI_IS_CLOSE))
  reason = CP_UMOUNT;
 return reason;
}
