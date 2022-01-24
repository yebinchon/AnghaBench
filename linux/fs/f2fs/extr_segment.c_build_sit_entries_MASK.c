#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sit_info {unsigned int sents_per_block; struct seg_entry* sentries; } ;
struct seg_entry {unsigned int valid_blocks; int /*<<< orphan*/  cur_valid_map; int /*<<< orphan*/  discard_map; int /*<<< orphan*/  type; } ;
struct page {int dummy; } ;
struct f2fs_sit_entry {int dummy; } ;
struct f2fs_sit_block {struct f2fs_sit_entry* entries; } ;
struct f2fs_sb_info {unsigned int discard_blks; unsigned int blocks_per_seg; } ;
struct f2fs_journal {int dummy; } ;
struct curseg_info {int /*<<< orphan*/  journal_rwsem; struct f2fs_journal* journal; } ;
typedef  unsigned int block_t ;
struct TYPE_2__ {unsigned int valid_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  CP_TRIMMED_FLAG ; 
 int /*<<< orphan*/  CURSEG_COLD_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int EFSCORRUPTED ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  META_SIT ; 
 int FUNC4 (struct page*) ; 
 int FUNC5 (struct f2fs_sb_info*) ; 
 size_t FUNC6 (struct sit_info*,unsigned int) ; 
 struct sit_info* FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  SIT_VBLOCK_MAP_SIZE ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*) ; 
 int FUNC9 (struct f2fs_sb_info*,unsigned int,struct f2fs_sit_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 unsigned int FUNC13 (struct f2fs_sb_info*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC14 (struct f2fs_sb_info*,unsigned int) ; 
 TYPE_1__* FUNC15 (struct f2fs_sb_info*,unsigned int) ; 
 scalar_t__ FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct seg_entry*,struct f2fs_sit_entry*) ; 
 int /*<<< orphan*/  FUNC22 (struct f2fs_journal*,unsigned int) ; 
 struct f2fs_sit_entry FUNC23 (struct f2fs_journal*,unsigned int) ; 
 unsigned int FUNC24 (struct f2fs_journal*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC26 (struct f2fs_sb_info*) ; 

__attribute__((used)) static int FUNC27(struct f2fs_sb_info *sbi)
{
	struct sit_info *sit_i = FUNC7(sbi);
	struct curseg_info *curseg = FUNC0(sbi, CURSEG_COLD_DATA);
	struct f2fs_journal *journal = curseg->journal;
	struct seg_entry *se;
	struct f2fs_sit_entry sit;
	int sit_blk_cnt = FUNC5(sbi);
	unsigned int i, start, end;
	unsigned int readed, start_blk = 0;
	int err = 0;
	block_t total_node_blocks = 0;

	do {
		readed = FUNC13(sbi, start_blk, BIO_MAX_PAGES,
							META_SIT, true);

		start = start_blk * sit_i->sents_per_block;
		end = (start_blk + readed) * sit_i->sents_per_block;

		for (; start < end && start < FUNC3(sbi); start++) {
			struct f2fs_sit_block *sit_blk;
			struct page *page;

			se = &sit_i->sentries[start];
			page = FUNC14(sbi, start);
			if (FUNC1(page))
				return FUNC4(page);
			sit_blk = (struct f2fs_sit_block *)FUNC20(page);
			sit = sit_blk->entries[FUNC6(sit_i, start)];
			FUNC12(page, 1);

			err = FUNC9(sbi, start, &sit);
			if (err)
				return err;
			FUNC21(se, &sit);
			if (FUNC2(se->type))
				total_node_blocks += se->valid_blocks;

			/* build discard map only one time */
			if (FUNC16(sbi, CP_TRIMMED_FLAG)) {
				FUNC19(se->discard_map, 0xff,
					SIT_VBLOCK_MAP_SIZE);
			} else {
				FUNC18(se->discard_map,
					se->cur_valid_map,
					SIT_VBLOCK_MAP_SIZE);
				sbi->discard_blks +=
					sbi->blocks_per_seg -
					se->valid_blocks;
			}

			if (FUNC8(sbi))
				FUNC15(sbi, start)->valid_blocks +=
							se->valid_blocks;
		}
		start_blk += readed;
	} while (start_blk < sit_blk_cnt);

	FUNC10(&curseg->journal_rwsem);
	for (i = 0; i < FUNC24(journal); i++) {
		unsigned int old_valid_blocks;

		start = FUNC17(FUNC22(journal, i));
		if (start >= FUNC3(sbi)) {
			FUNC11(sbi, "Wrong journal entry on segno %u",
				 start);
			err = -EFSCORRUPTED;
			break;
		}

		se = &sit_i->sentries[start];
		sit = FUNC23(journal, i);

		old_valid_blocks = se->valid_blocks;
		if (FUNC2(se->type))
			total_node_blocks -= old_valid_blocks;

		err = FUNC9(sbi, start, &sit);
		if (err)
			break;
		FUNC21(se, &sit);
		if (FUNC2(se->type))
			total_node_blocks += se->valid_blocks;

		if (FUNC16(sbi, CP_TRIMMED_FLAG)) {
			FUNC19(se->discard_map, 0xff, SIT_VBLOCK_MAP_SIZE);
		} else {
			FUNC18(se->discard_map, se->cur_valid_map,
						SIT_VBLOCK_MAP_SIZE);
			sbi->discard_blks += old_valid_blocks;
			sbi->discard_blks -= se->valid_blocks;
		}

		if (FUNC8(sbi)) {
			FUNC15(sbi, start)->valid_blocks +=
							se->valid_blocks;
			FUNC15(sbi, start)->valid_blocks -=
							old_valid_blocks;
		}
	}
	FUNC25(&curseg->journal_rwsem);

	if (!err && total_node_blocks != FUNC26(sbi)) {
		FUNC11(sbi, "SIT is corrupted node# %u vs %u",
			 total_node_blocks, FUNC26(sbi));
		err = -EFSCORRUPTED;
	}

	return err;
}