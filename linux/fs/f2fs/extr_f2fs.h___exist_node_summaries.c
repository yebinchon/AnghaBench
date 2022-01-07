
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int CP_FASTBOOT_FLAG ;
 int CP_UMOUNT_FLAG ;
 scalar_t__ is_set_ckpt_flags (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static inline bool __exist_node_summaries(struct f2fs_sb_info *sbi)
{
 return (is_set_ckpt_flags(sbi, CP_UMOUNT_FLAG) ||
   is_set_ckpt_flags(sbi, CP_FASTBOOT_FLAG));
}
