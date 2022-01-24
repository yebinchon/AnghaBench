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
struct gc_inode_list {int dummy; } ;
struct f2fs_summary_block {int /*<<< orphan*/  entries; int /*<<< orphan*/  footer; } ;
struct f2fs_sb_info {int migration_granularity; unsigned int* next_victim_seg; int /*<<< orphan*/  stat_info; int /*<<< orphan*/  segs_per_sec; } ;
struct blk_plug {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int FG_GC ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*,unsigned int) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  META_SSA ; 
 int /*<<< orphan*/  NODE ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 unsigned char SUM_TYPE_DATA ; 
 unsigned char SUM_TYPE_NODE ; 
 scalar_t__ FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC9 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,char*,unsigned int,unsigned char,unsigned char) ; 
 struct page* FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct gc_inode_list*,unsigned int,int) ; 
 scalar_t__ FUNC19 (struct f2fs_sb_info*,int /*<<< orphan*/ ,unsigned int,int) ; 
 TYPE_1__* FUNC20 (struct f2fs_sb_info*,unsigned int) ; 
 scalar_t__ FUNC21 (struct f2fs_sb_info*,unsigned int,int) ; 
 struct f2fs_summary_block* FUNC22 (struct page*) ; 
 unsigned int FUNC23 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct f2fs_sb_info*,unsigned char,int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 

__attribute__((used)) static int FUNC29(struct f2fs_sb_info *sbi,
				unsigned int start_segno,
				struct gc_inode_list *gc_list, int gc_type)
{
	struct page *sum_page;
	struct f2fs_summary_block *sum;
	struct blk_plug plug;
	unsigned int segno = start_segno;
	unsigned int end_segno = start_segno + sbi->segs_per_sec;
	int seg_freed = 0, migrated = 0;
	unsigned char type = FUNC2(FUNC20(sbi, segno)->type) ?
						SUM_TYPE_DATA : SUM_TYPE_NODE;
	int submitted = 0;

	if (FUNC7(sbi))
		end_segno = FUNC23(end_segno, sbi->segs_per_sec);

	/* readahead multi ssa blocks those have contiguous address */
	if (FUNC7(sbi))
		FUNC14(sbi, FUNC0(sbi, segno),
					end_segno - segno, META_SSA, true);

	/* reference all summary page */
	while (segno < end_segno) {
		sum_page = FUNC12(sbi, segno++);
		if (FUNC3(sum_page)) {
			int err = FUNC5(sum_page);

			end_segno = segno - 1;
			for (segno = start_segno; segno < end_segno; segno++) {
				sum_page = FUNC17(FUNC4(sbi),
						FUNC0(sbi, segno));
				FUNC13(sum_page, 0);
				FUNC13(sum_page, 0);
			}
			return err;
		}
		FUNC28(sum_page);
	}

	FUNC9(&plug);

	for (segno = start_segno; segno < end_segno; segno++) {

		/* find segment summary of victim */
		sum_page = FUNC17(FUNC4(sbi),
					FUNC0(sbi, segno));
		FUNC13(sum_page, 0);

		if (FUNC21(sbi, segno, false) == 0)
			goto freed;
		if (FUNC7(sbi) &&
				migrated >= sbi->migration_granularity)
			goto skip;
		if (!FUNC6(sum_page) || FUNC27(FUNC10(sbi)))
			goto skip;

		sum = FUNC22(sum_page);
		if (type != FUNC1((&sum->footer))) {
			FUNC11(sbi, "Inconsistent segment (%u) type [%d, %d] in SSA and SIT",
				 segno, type, FUNC1((&sum->footer)));
			FUNC24(sbi, SBI_NEED_FSCK);
			FUNC15(sbi, false);
			goto skip;
		}

		/*
		 * this is to avoid deadlock:
		 * - lock_page(sum_page)         - f2fs_replace_block
		 *  - check_valid_map()            - down_write(sentry_lock)
		 *   - down_read(sentry_lock)     - change_curseg()
		 *                                  - lock_page(sum_page)
		 */
		if (type == SUM_TYPE_NODE)
			submitted += FUNC19(sbi, sum->entries, segno,
								gc_type);
		else
			submitted += FUNC18(sbi, sum->entries, gc_list,
							segno, gc_type);

		FUNC26(sbi, type, gc_type);

freed:
		if (gc_type == FG_GC &&
				FUNC21(sbi, segno, false) == 0)
			seg_freed++;
		migrated++;

		if (FUNC7(sbi) && segno + 1 < end_segno)
			sbi->next_victim_seg[gc_type] = segno + 1;
skip:
		FUNC13(sum_page, 0);
	}

	if (submitted)
		FUNC16(sbi,
				(type == SUM_TYPE_NODE) ? NODE : DATA);

	FUNC8(&plug);

	FUNC25(sbi->stat_info);

	return seg_freed;
}