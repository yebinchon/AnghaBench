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
struct page {int dummy; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {unsigned short blocks_per_seg; TYPE_1__* ckpt; } ;
struct curseg_info {TYPE_2__* sum_blk; int /*<<< orphan*/  journal; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_4__ {struct f2fs_summary* entries; } ;
struct TYPE_3__ {scalar_t__* alloc_type; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 int CURSEG_HOT_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ SSR ; 
 scalar_t__ SUMMARY_SIZE ; 
 scalar_t__ SUM_FOOTER_SIZE ; 
 scalar_t__ SUM_JOURNAL_SIZE ; 
 unsigned short FUNC1 (struct f2fs_sb_info*,int) ; 
 struct page* FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static void FUNC8(struct f2fs_sb_info *sbi, block_t blkaddr)
{
	struct page *page;
	unsigned char *kaddr;
	struct f2fs_summary *summary;
	struct curseg_info *seg_i;
	int written_size = 0;
	int i, j;

	page = FUNC2(sbi, blkaddr++);
	kaddr = (unsigned char *)FUNC6(page);
	FUNC5(kaddr, 0, PAGE_SIZE);

	/* Step 1: write nat cache */
	seg_i = FUNC0(sbi, CURSEG_HOT_DATA);
	FUNC4(kaddr, seg_i->journal, SUM_JOURNAL_SIZE);
	written_size += SUM_JOURNAL_SIZE;

	/* Step 2: write sit cache */
	seg_i = FUNC0(sbi, CURSEG_COLD_DATA);
	FUNC4(kaddr + written_size, seg_i->journal, SUM_JOURNAL_SIZE);
	written_size += SUM_JOURNAL_SIZE;

	/* Step 3: write summary entries */
	for (i = CURSEG_HOT_DATA; i <= CURSEG_COLD_DATA; i++) {
		unsigned short blkoff;
		seg_i = FUNC0(sbi, i);
		if (sbi->ckpt->alloc_type[i] == SSR)
			blkoff = sbi->blocks_per_seg;
		else
			blkoff = FUNC1(sbi, i);

		for (j = 0; j < blkoff; j++) {
			if (!page) {
				page = FUNC2(sbi, blkaddr++);
				kaddr = (unsigned char *)FUNC6(page);
				FUNC5(kaddr, 0, PAGE_SIZE);
				written_size = 0;
			}
			summary = (struct f2fs_summary *)(kaddr + written_size);
			*summary = seg_i->sum_blk->entries[j];
			written_size += SUMMARY_SIZE;

			if (written_size + SUMMARY_SIZE <= PAGE_SIZE -
							SUM_FOOTER_SIZE)
				continue;

			FUNC7(page);
			FUNC3(page, 1);
			page = NULL;
		}
	}
	if (page) {
		FUNC7(page);
		FUNC3(page, 1);
	}
}