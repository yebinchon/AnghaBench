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
struct f2fs_sb_info {unsigned int blocks_per_seg; } ;
struct TYPE_4__ {unsigned int segno; } ;
struct TYPE_3__ {unsigned int ckpt_valid_blocks; } ;

/* Variables and functions */
 int CURSEG_COLD_NODE ; 
 int CURSEG_HOT_DATA ; 
 int CURSEG_HOT_NODE ; 
 TYPE_2__* FUNC0 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  F2FS_DIRTY_DENTS ; 
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct f2fs_sb_info*,unsigned int) ; 

__attribute__((used)) static inline bool FUNC3(struct f2fs_sb_info *sbi)
{
	unsigned int node_blocks = FUNC1(sbi, F2FS_DIRTY_NODES) +
					FUNC1(sbi, F2FS_DIRTY_DENTS);
	unsigned int dent_blocks = FUNC1(sbi, F2FS_DIRTY_DENTS);
	unsigned int segno, left_blocks;
	int i;

	/* check current node segment */
	for (i = CURSEG_HOT_NODE; i <= CURSEG_COLD_NODE; i++) {
		segno = FUNC0(sbi, i)->segno;
		left_blocks = sbi->blocks_per_seg -
			FUNC2(sbi, segno)->ckpt_valid_blocks;

		if (node_blocks > left_blocks)
			return false;
	}

	/* check current data segment */
	segno = FUNC0(sbi, CURSEG_HOT_DATA)->segno;
	left_blocks = sbi->blocks_per_seg -
			FUNC2(sbi, segno)->ckpt_valid_blocks;
	if (dent_blocks > left_blocks)
		return false;
	return true;
}