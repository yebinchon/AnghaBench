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
struct page {int dummy; } ;
struct f2fs_summary {scalar_t__ ofs_in_node; scalar_t__ version; } ;
struct f2fs_summary_block {struct f2fs_summary footer; struct f2fs_summary* entries; struct f2fs_summary journal; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;
struct f2fs_checkpoint {int /*<<< orphan*/ * alloc_type; int /*<<< orphan*/ * cur_node_blkoff; int /*<<< orphan*/ * cur_node_segno; int /*<<< orphan*/ * cur_data_blkoff; int /*<<< orphan*/ * cur_data_segno; } ;
struct curseg_info {unsigned int next_segno; unsigned short next_blkoff; int /*<<< orphan*/  curseg_mutex; int /*<<< orphan*/  alloc_type; TYPE_1__* sum_blk; int /*<<< orphan*/  journal_rwsem; int /*<<< orphan*/ * journal; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_2__ {int /*<<< orphan*/  footer; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int CURSEG_HOT_DATA ; 
 int CURSEG_HOT_NODE ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 struct f2fs_checkpoint* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,unsigned int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  NR_CURSEG_DATA_TYPE ; 
 int /*<<< orphan*/  NR_CURSEG_NODE_TYPE ; 
 int /*<<< orphan*/  NR_CURSEG_TYPE ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  SUM_ENTRY_SIZE ; 
 int /*<<< orphan*/  SUM_FOOTER_SIZE ; 
 int /*<<< orphan*/  SUM_JOURNAL_SIZE ; 
 scalar_t__ FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct page* FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int FUNC11 (struct f2fs_sb_info*,unsigned int,struct f2fs_summary_block*) ; 
 unsigned short FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct f2fs_summary*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct f2fs_sb_info *sbi, int type)
{
	struct f2fs_checkpoint *ckpt = FUNC1(sbi);
	struct f2fs_summary_block *sum;
	struct curseg_info *curseg;
	struct page *new;
	unsigned short blk_off;
	unsigned int segno = 0;
	block_t blk_addr = 0;
	int err = 0;

	/* get segment number and block addr */
	if (FUNC3(type)) {
		segno = FUNC13(ckpt->cur_data_segno[type]);
		blk_off = FUNC12(ckpt->cur_data_blkoff[type -
							CURSEG_HOT_DATA]);
		if (FUNC7(sbi))
			blk_addr = FUNC19(sbi, NR_CURSEG_TYPE, type);
		else
			blk_addr = FUNC19(sbi, NR_CURSEG_DATA_TYPE, type);
	} else {
		segno = FUNC13(ckpt->cur_node_segno[type -
							CURSEG_HOT_NODE]);
		blk_off = FUNC12(ckpt->cur_node_blkoff[type -
							CURSEG_HOT_NODE]);
		if (FUNC7(sbi))
			blk_addr = FUNC19(sbi, NR_CURSEG_NODE_TYPE,
							type - CURSEG_HOT_NODE);
		else
			blk_addr = FUNC2(sbi, segno);
	}

	new = FUNC9(sbi, blk_addr);
	if (FUNC4(new))
		return FUNC6(new);
	sum = (struct f2fs_summary_block *)FUNC17(new);

	if (FUNC5(type)) {
		if (FUNC7(sbi)) {
			struct f2fs_summary *ns = &sum->entries[0];
			int i;
			for (i = 0; i < sbi->blocks_per_seg; i++, ns++) {
				ns->version = 0;
				ns->ofs_in_node = 0;
			}
		} else {
			err = FUNC11(sbi, segno, sum);
			if (err)
				goto out;
		}
	}

	/* set uncompleted segment to curseg */
	curseg = FUNC0(sbi, type);
	FUNC15(&curseg->curseg_mutex);

	/* update journal info */
	FUNC8(&curseg->journal_rwsem);
	FUNC14(curseg->journal, &sum->journal, SUM_JOURNAL_SIZE);
	FUNC20(&curseg->journal_rwsem);

	FUNC14(curseg->sum_blk->entries, sum->entries, SUM_ENTRY_SIZE);
	FUNC14(&curseg->sum_blk->footer, &sum->footer, SUM_FOOTER_SIZE);
	curseg->next_segno = segno;
	FUNC18(sbi, type, 0);
	curseg->alloc_type = ckpt->alloc_type[type];
	curseg->next_blkoff = blk_off;
	FUNC16(&curseg->curseg_mutex);
out:
	FUNC10(new, 1);
	return err;
}