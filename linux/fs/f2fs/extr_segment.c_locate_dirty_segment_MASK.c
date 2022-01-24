#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct f2fs_sb_info {unsigned short blocks_per_seg; } ;
struct dirty_seglist_info {int /*<<< orphan*/  seglist_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIRTY ; 
 struct dirty_seglist_info* FUNC0 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned int NULL_SEGNO ; 
 int /*<<< orphan*/  PRE ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned short FUNC4 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned short FUNC5 (struct f2fs_sb_info*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct f2fs_sb_info *sbi, unsigned int segno)
{
	struct dirty_seglist_info *dirty_i = FUNC0(sbi);
	unsigned short valid_blocks, ckpt_valid_blocks;

	if (segno == NULL_SEGNO || FUNC1(sbi, segno))
		return;

	FUNC7(&dirty_i->seglist_lock);

	valid_blocks = FUNC5(sbi, segno, false);
	ckpt_valid_blocks = FUNC4(sbi, segno);

	if (valid_blocks == 0 && (!FUNC6(sbi, SBI_CP_DISABLED) ||
				ckpt_valid_blocks == sbi->blocks_per_seg)) {
		FUNC2(sbi, segno, PRE);
		FUNC3(sbi, segno, DIRTY);
	} else if (valid_blocks < sbi->blocks_per_seg) {
		FUNC2(sbi, segno, DIRTY);
	} else {
		/* Recovery routine with SSR needs this */
		FUNC3(sbi, segno, DIRTY);
	}

	FUNC8(&dirty_i->seglist_lock);
}