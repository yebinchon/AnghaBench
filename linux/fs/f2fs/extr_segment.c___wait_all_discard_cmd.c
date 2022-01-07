
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct discard_policy {int dummy; } ;


 int DPOLICY_FSTRIM ;
 int DPOLICY_UMOUNT ;
 int UINT_MAX ;
 int __init_discard_policy (struct f2fs_sb_info*,struct discard_policy*,int ,int) ;
 unsigned int __wait_discard_cmd_range (struct f2fs_sb_info*,struct discard_policy*,int ,int ) ;

__attribute__((used)) static unsigned int __wait_all_discard_cmd(struct f2fs_sb_info *sbi,
      struct discard_policy *dpolicy)
{
 struct discard_policy dp;
 unsigned int discard_blks;

 if (dpolicy)
  return __wait_discard_cmd_range(sbi, dpolicy, 0, UINT_MAX);


 __init_discard_policy(sbi, &dp, DPOLICY_FSTRIM, 1);
 discard_blks = __wait_discard_cmd_range(sbi, &dp, 0, UINT_MAX);
 __init_discard_policy(sbi, &dp, DPOLICY_UMOUNT, 1);
 discard_blks += __wait_discard_cmd_range(sbi, &dp, 0, UINT_MAX);

 return discard_blks;
}
