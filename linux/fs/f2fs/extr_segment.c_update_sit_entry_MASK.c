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
struct seg_entry {int valid_blocks; scalar_t__ mtime; scalar_t__ ckpt_valid_blocks; int /*<<< orphan*/  ckpt_valid_map; int /*<<< orphan*/  discard_map; int /*<<< orphan*/  cur_valid_map_mir; int /*<<< orphan*/  cur_valid_map; } ;
struct f2fs_sb_info {long blocks_per_seg; int /*<<< orphan*/  discard_blks; int /*<<< orphan*/  stat_lock; int /*<<< orphan*/  unusable_block_count; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_4__ {scalar_t__ max_mtime; int written_valid_blocks; } ;
struct TYPE_3__ {int valid_blocks; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 TYPE_2__* FUNC2 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct f2fs_sb_info*,int) ; 
 TYPE_1__* FUNC11 (struct f2fs_sb_info*,unsigned int) ; 
 struct seg_entry* FUNC12 (struct f2fs_sb_info*,unsigned int) ; 
 int FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static void FUNC17(struct f2fs_sb_info *sbi, block_t blkaddr, int del)
{
	struct seg_entry *se;
	unsigned int segno, offset;
	long int new_vblocks;
	bool exist;
#ifdef CONFIG_F2FS_CHECK_FS
	bool mir_exist;
#endif

	segno = FUNC1(sbi, blkaddr);

	se = FUNC12(sbi, segno);
	new_vblocks = se->valid_blocks + del;
	offset = FUNC0(sbi, blkaddr);

	FUNC5(sbi, (new_vblocks >> (sizeof(unsigned short) << 3) ||
				(new_vblocks > sbi->blocks_per_seg)));

	se->valid_blocks = new_vblocks;
	se->mtime = FUNC10(sbi, false);
	if (se->mtime > FUNC2(sbi)->max_mtime)
		FUNC2(sbi)->max_mtime = se->mtime;

	/* Update valid block bitmap */
	if (del > 0) {
		exist = FUNC8(offset, se->cur_valid_map);
#ifdef CONFIG_F2FS_CHECK_FS
		mir_exist = f2fs_test_and_set_bit(offset,
						se->cur_valid_map_mir);
		if (unlikely(exist != mir_exist)) {
			f2fs_err(sbi, "Inconsistent error when setting bitmap, blk:%u, old bit:%d",
				 blkaddr, exist);
			f2fs_bug_on(sbi, 1);
		}
#endif
		if (FUNC16(exist)) {
			FUNC6(sbi, "Bitmap was wrongly set, blk:%u",
				 blkaddr);
			FUNC5(sbi, 1);
			se->valid_blocks--;
			del = 0;
		}

		if (!FUNC8(offset, se->discard_map))
			sbi->discard_blks--;

		/*
		 * SSR should never reuse block which is checkpointed
		 * or newly invalidated.
		 */
		if (!FUNC13(sbi, SBI_CP_DISABLED)) {
			if (!FUNC8(offset, se->ckpt_valid_map))
				se->ckpt_valid_blocks++;
		}
	} else {
		exist = FUNC7(offset, se->cur_valid_map);
#ifdef CONFIG_F2FS_CHECK_FS
		mir_exist = f2fs_test_and_clear_bit(offset,
						se->cur_valid_map_mir);
		if (unlikely(exist != mir_exist)) {
			f2fs_err(sbi, "Inconsistent error when clearing bitmap, blk:%u, old bit:%d",
				 blkaddr, exist);
			f2fs_bug_on(sbi, 1);
		}
#endif
		if (FUNC16(!exist)) {
			FUNC6(sbi, "Bitmap was wrongly cleared, blk:%u",
				 blkaddr);
			FUNC5(sbi, 1);
			se->valid_blocks++;
			del = 0;
		} else if (FUNC16(FUNC13(sbi, SBI_CP_DISABLED))) {
			/*
			 * If checkpoints are off, we must not reuse data that
			 * was used in the previous checkpoint. If it was used
			 * before, we must track that to know how much space we
			 * really have.
			 */
			if (FUNC9(offset, se->ckpt_valid_map)) {
				FUNC14(&sbi->stat_lock);
				sbi->unusable_block_count++;
				FUNC15(&sbi->stat_lock);
			}
		}

		if (FUNC7(offset, se->discard_map))
			sbi->discard_blks++;
	}
	if (!FUNC9(offset, se->ckpt_valid_map))
		se->ckpt_valid_blocks += del;

	FUNC4(sbi, segno);

	/* update total number of valid blocks to be written in ckpt area */
	FUNC2(sbi)->written_valid_blocks += del;

	if (FUNC3(sbi))
		FUNC11(sbi, segno)->valid_blocks += del;
}