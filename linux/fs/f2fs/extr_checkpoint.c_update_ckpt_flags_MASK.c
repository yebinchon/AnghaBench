#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {scalar_t__ blocks_per_seg; int /*<<< orphan*/  cp_lock; TYPE_1__* im; } ;
struct f2fs_checkpoint {int /*<<< orphan*/  cp_pack_total_block_count; } ;
struct cp_control {int reason; } ;
struct TYPE_4__ {scalar_t__ nat_bits_blocks; } ;
struct TYPE_3__ {unsigned long ino_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_CRC_RECOVERY_FLAG ; 
 int /*<<< orphan*/  CP_DISABLED_FLAG ; 
 int /*<<< orphan*/  CP_DISABLED_QUICK_FLAG ; 
 int CP_FASTBOOT ; 
 int /*<<< orphan*/  CP_FASTBOOT_FLAG ; 
 int /*<<< orphan*/  CP_FSCK_FLAG ; 
 int /*<<< orphan*/  CP_NOCRC_RECOVERY_FLAG ; 
 int /*<<< orphan*/  CP_ORPHAN_PRESENT_FLAG ; 
 int /*<<< orphan*/  CP_QUOTA_NEED_FSCK_FLAG ; 
 int CP_TRIMMED ; 
 int /*<<< orphan*/  CP_TRIMMED_FLAG ; 
 int CP_UMOUNT ; 
 int /*<<< orphan*/  CP_UMOUNT_FLAG ; 
 struct f2fs_checkpoint* FUNC0 (struct f2fs_sb_info*) ; 
 TYPE_2__* FUNC1 (struct f2fs_sb_info*) ; 
 size_t ORPHAN_INO ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  SBI_CP_DISABLED_QUICK ; 
 int /*<<< orphan*/  SBI_IS_RESIZEFS ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int /*<<< orphan*/  SBI_QUOTA_NEED_REPAIR ; 
 int /*<<< orphan*/  SBI_QUOTA_SKIP_FLUSH ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_checkpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_checkpoint*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct f2fs_sb_info *sbi, struct cp_control *cpc)
{
	unsigned long orphan_num = sbi->im[ORPHAN_INO].ino_num;
	struct f2fs_checkpoint *ckpt = FUNC0(sbi);
	unsigned long flags;

	FUNC7(&sbi->cp_lock, flags);

	if ((cpc->reason & CP_UMOUNT) &&
			FUNC6(ckpt->cp_pack_total_block_count) >
			sbi->blocks_per_seg - FUNC1(sbi)->nat_bits_blocks)
		FUNC4(sbi, false);

	if (cpc->reason & CP_TRIMMED)
		FUNC3(ckpt, CP_TRIMMED_FLAG);
	else
		FUNC2(ckpt, CP_TRIMMED_FLAG);

	if (cpc->reason & CP_UMOUNT)
		FUNC3(ckpt, CP_UMOUNT_FLAG);
	else
		FUNC2(ckpt, CP_UMOUNT_FLAG);

	if (cpc->reason & CP_FASTBOOT)
		FUNC3(ckpt, CP_FASTBOOT_FLAG);
	else
		FUNC2(ckpt, CP_FASTBOOT_FLAG);

	if (orphan_num)
		FUNC3(ckpt, CP_ORPHAN_PRESENT_FLAG);
	else
		FUNC2(ckpt, CP_ORPHAN_PRESENT_FLAG);

	if (FUNC5(sbi, SBI_NEED_FSCK) ||
		FUNC5(sbi, SBI_IS_RESIZEFS))
		FUNC3(ckpt, CP_FSCK_FLAG);

	if (FUNC5(sbi, SBI_CP_DISABLED))
		FUNC3(ckpt, CP_DISABLED_FLAG);
	else
		FUNC2(ckpt, CP_DISABLED_FLAG);

	if (FUNC5(sbi, SBI_CP_DISABLED_QUICK))
		FUNC3(ckpt, CP_DISABLED_QUICK_FLAG);
	else
		FUNC2(ckpt, CP_DISABLED_QUICK_FLAG);

	if (FUNC5(sbi, SBI_QUOTA_SKIP_FLUSH))
		FUNC3(ckpt, CP_QUOTA_NEED_FSCK_FLAG);
	else
		FUNC2(ckpt, CP_QUOTA_NEED_FSCK_FLAG);

	if (FUNC5(sbi, SBI_QUOTA_NEED_REPAIR))
		FUNC3(ckpt, CP_QUOTA_NEED_FSCK_FLAG);

	/* set this flag to activate crc|cp_ver for recovery */
	FUNC3(ckpt, CP_CRC_RECOVERY_FLAG);
	FUNC2(ckpt, CP_NOCRC_RECOVERY_FLAG);

	FUNC8(&sbi->cp_lock, flags);
}