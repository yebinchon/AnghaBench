
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {scalar_t__ blocks_per_seg; int cp_lock; TYPE_1__* im; } ;
struct f2fs_checkpoint {int cp_pack_total_block_count; } ;
struct cp_control {int reason; } ;
struct TYPE_4__ {scalar_t__ nat_bits_blocks; } ;
struct TYPE_3__ {unsigned long ino_num; } ;


 int CP_CRC_RECOVERY_FLAG ;
 int CP_DISABLED_FLAG ;
 int CP_DISABLED_QUICK_FLAG ;
 int CP_FASTBOOT ;
 int CP_FASTBOOT_FLAG ;
 int CP_FSCK_FLAG ;
 int CP_NOCRC_RECOVERY_FLAG ;
 int CP_ORPHAN_PRESENT_FLAG ;
 int CP_QUOTA_NEED_FSCK_FLAG ;
 int CP_TRIMMED ;
 int CP_TRIMMED_FLAG ;
 int CP_UMOUNT ;
 int CP_UMOUNT_FLAG ;
 struct f2fs_checkpoint* F2FS_CKPT (struct f2fs_sb_info*) ;
 TYPE_2__* NM_I (struct f2fs_sb_info*) ;
 size_t ORPHAN_INO ;
 int SBI_CP_DISABLED ;
 int SBI_CP_DISABLED_QUICK ;
 int SBI_IS_RESIZEFS ;
 int SBI_NEED_FSCK ;
 int SBI_QUOTA_NEED_REPAIR ;
 int SBI_QUOTA_SKIP_FLUSH ;
 int __clear_ckpt_flags (struct f2fs_checkpoint*,int ) ;
 int __set_ckpt_flags (struct f2fs_checkpoint*,int ) ;
 int disable_nat_bits (struct f2fs_sb_info*,int) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void update_ckpt_flags(struct f2fs_sb_info *sbi, struct cp_control *cpc)
{
 unsigned long orphan_num = sbi->im[ORPHAN_INO].ino_num;
 struct f2fs_checkpoint *ckpt = F2FS_CKPT(sbi);
 unsigned long flags;

 spin_lock_irqsave(&sbi->cp_lock, flags);

 if ((cpc->reason & CP_UMOUNT) &&
   le32_to_cpu(ckpt->cp_pack_total_block_count) >
   sbi->blocks_per_seg - NM_I(sbi)->nat_bits_blocks)
  disable_nat_bits(sbi, 0);

 if (cpc->reason & CP_TRIMMED)
  __set_ckpt_flags(ckpt, CP_TRIMMED_FLAG);
 else
  __clear_ckpt_flags(ckpt, CP_TRIMMED_FLAG);

 if (cpc->reason & CP_UMOUNT)
  __set_ckpt_flags(ckpt, CP_UMOUNT_FLAG);
 else
  __clear_ckpt_flags(ckpt, CP_UMOUNT_FLAG);

 if (cpc->reason & CP_FASTBOOT)
  __set_ckpt_flags(ckpt, CP_FASTBOOT_FLAG);
 else
  __clear_ckpt_flags(ckpt, CP_FASTBOOT_FLAG);

 if (orphan_num)
  __set_ckpt_flags(ckpt, CP_ORPHAN_PRESENT_FLAG);
 else
  __clear_ckpt_flags(ckpt, CP_ORPHAN_PRESENT_FLAG);

 if (is_sbi_flag_set(sbi, SBI_NEED_FSCK) ||
  is_sbi_flag_set(sbi, SBI_IS_RESIZEFS))
  __set_ckpt_flags(ckpt, CP_FSCK_FLAG);

 if (is_sbi_flag_set(sbi, SBI_CP_DISABLED))
  __set_ckpt_flags(ckpt, CP_DISABLED_FLAG);
 else
  __clear_ckpt_flags(ckpt, CP_DISABLED_FLAG);

 if (is_sbi_flag_set(sbi, SBI_CP_DISABLED_QUICK))
  __set_ckpt_flags(ckpt, CP_DISABLED_QUICK_FLAG);
 else
  __clear_ckpt_flags(ckpt, CP_DISABLED_QUICK_FLAG);

 if (is_sbi_flag_set(sbi, SBI_QUOTA_SKIP_FLUSH))
  __set_ckpt_flags(ckpt, CP_QUOTA_NEED_FSCK_FLAG);
 else
  __clear_ckpt_flags(ckpt, CP_QUOTA_NEED_FSCK_FLAG);

 if (is_sbi_flag_set(sbi, SBI_QUOTA_NEED_REPAIR))
  __set_ckpt_flags(ckpt, CP_QUOTA_NEED_FSCK_FLAG);


 __set_ckpt_flags(ckpt, CP_CRC_RECOVERY_FLAG);
 __clear_ckpt_flags(ckpt, CP_NOCRC_RECOVERY_FLAG);

 spin_unlock_irqrestore(&sbi->cp_lock, flags);
}
