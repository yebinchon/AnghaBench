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
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {unsigned short blocks_per_seg; } ;
struct f2fs_checkpoint {scalar_t__* alloc_type; int /*<<< orphan*/ * cur_data_blkoff; int /*<<< orphan*/ * cur_data_segno; } ;
struct curseg_info {unsigned int next_segno; scalar_t__ alloc_type; unsigned short next_blkoff; TYPE_1__* sum_blk; int /*<<< orphan*/  journal; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_2__ {struct f2fs_summary* entries; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 int CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 struct f2fs_checkpoint* FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ SSR ; 
 scalar_t__ SUMMARY_SIZE ; 
 scalar_t__ SUM_FOOTER_SIZE ; 
 int SUM_JOURNAL_SIZE ; 
 struct page* FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 unsigned short FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*) ; 

__attribute__((used)) static int FUNC12(struct f2fs_sb_info *sbi)
{
	struct f2fs_checkpoint *ckpt = FUNC1(sbi);
	struct curseg_info *seg_i;
	unsigned char *kaddr;
	struct page *page;
	block_t start;
	int i, j, offset;

	start = FUNC11(sbi);

	page = FUNC4(sbi, start++);
	if (FUNC2(page))
		return FUNC3(page);
	kaddr = (unsigned char *)FUNC9(page);

	/* Step 1: restore nat cache */
	seg_i = FUNC0(sbi, CURSEG_HOT_DATA);
	FUNC8(seg_i->journal, kaddr, SUM_JOURNAL_SIZE);

	/* Step 2: restore sit cache */
	seg_i = FUNC0(sbi, CURSEG_COLD_DATA);
	FUNC8(seg_i->journal, kaddr + SUM_JOURNAL_SIZE, SUM_JOURNAL_SIZE);
	offset = 2 * SUM_JOURNAL_SIZE;

	/* Step 3: restore summary entries */
	for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
		unsigned short blk_off;
		unsigned int segno;

		seg_i = FUNC0(sbi, i);
		segno = FUNC7(ckpt->cur_data_segno[i]);
		blk_off = FUNC6(ckpt->cur_data_blkoff[i]);
		seg_i->next_segno = segno;
		FUNC10(sbi, i, 0);
		seg_i->alloc_type = ckpt->alloc_type[i];
		seg_i->next_blkoff = blk_off;

		if (seg_i->alloc_type == SSR)
			blk_off = sbi->blocks_per_seg;

		for (j = 0; j < blk_off; j++) {
			struct f2fs_summary *s;
			s = (struct f2fs_summary *)(kaddr + offset);
			seg_i->sum_blk->entries[j] = *s;
			offset += SUMMARY_SIZE;
			if (offset + SUMMARY_SIZE <= PAGE_SIZE -
						SUM_FOOTER_SIZE)
				continue;

			FUNC5(page, 1);
			page = NULL;

			page = FUNC4(sbi, start++);
			if (FUNC2(page))
				return FUNC3(page);
			kaddr = (unsigned char *)FUNC9(page);
			offset = 0;
		}
	}
	FUNC5(page, 1);
	return 0;
}