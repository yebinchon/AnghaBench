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
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_4__ {int /*<<< orphan*/  sit_base_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ssa_blkaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DATA_GENERIC 136 
#define  DATA_GENERIC_ENHANCE 135 
#define  DATA_GENERIC_ENHANCE_READ 134 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
#define  META_CP 133 
#define  META_GENERIC 132 
#define  META_NAT 131 
#define  META_POR 130 
#define  META_SIT 129 
#define  META_SSA 128 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 
 TYPE_2__* FUNC5 (struct f2fs_sb_info*) ; 
 TYPE_1__* FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

bool FUNC13(struct f2fs_sb_info *sbi,
					block_t blkaddr, int type)
{
	switch (type) {
	case META_NAT:
		break;
	case META_SIT:
		if (FUNC12(blkaddr >= FUNC4(sbi)))
			return false;
		break;
	case META_SSA:
		if (FUNC12(blkaddr >= FUNC1(sbi) ||
			blkaddr < FUNC6(sbi)->ssa_blkaddr))
			return false;
		break;
	case META_CP:
		if (FUNC12(blkaddr >= FUNC5(sbi)->sit_base_addr ||
			blkaddr < FUNC9(sbi)))
			return false;
		break;
	case META_POR:
		if (FUNC12(blkaddr >= FUNC2(sbi) ||
			blkaddr < FUNC1(sbi)))
			return false;
		break;
	case DATA_GENERIC:
	case DATA_GENERIC_ENHANCE:
	case DATA_GENERIC_ENHANCE_READ:
		if (FUNC12(blkaddr >= FUNC2(sbi) ||
				blkaddr < FUNC1(sbi))) {
			FUNC10(sbi, "access invalid blkaddr:%u",
				  blkaddr);
			FUNC11(sbi, SBI_NEED_FSCK);
			FUNC7(1);
			return false;
		} else {
			return FUNC8(sbi, blkaddr, type);
		}
		break;
	case META_GENERIC:
		if (FUNC12(blkaddr < FUNC3(sbi) ||
			blkaddr >= FUNC1(sbi)))
			return false;
		break;
	default:
		FUNC0();
	}

	return true;
}