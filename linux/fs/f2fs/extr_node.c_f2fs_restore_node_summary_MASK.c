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
struct f2fs_summary_block {struct f2fs_summary* entries; } ;
struct f2fs_summary {scalar_t__ ofs_in_node; scalar_t__ version; int /*<<< orphan*/  nid; } ;
struct f2fs_sb_info {int blocks_per_seg; } ;
struct TYPE_2__ {int /*<<< orphan*/  nid; } ;
struct f2fs_node {TYPE_1__ footer; } ;
typedef  int block_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 struct f2fs_node* FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  META_POR ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct f2fs_sb_info*,unsigned int) ; 
 struct page* FUNC5 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 

int FUNC10(struct f2fs_sb_info *sbi,
			unsigned int segno, struct f2fs_summary_block *sum)
{
	struct f2fs_node *rn;
	struct f2fs_summary *sum_entry;
	block_t addr;
	int i, idx, last_offset, nrpages;

	/* scan the node segment */
	last_offset = sbi->blocks_per_seg;
	addr = FUNC4(sbi, segno);
	sum_entry = &sum->entries[0];

	for (i = 0; i < last_offset; i += nrpages, addr += nrpages) {
		nrpages = FUNC9(last_offset - i, BIO_MAX_PAGES);

		/* readahead node pages */
		FUNC7(sbi, addr, nrpages, META_POR, true);

		for (idx = addr; idx < addr + nrpages; idx++) {
			struct page *page = FUNC5(sbi, idx);

			if (FUNC1(page))
				return FUNC3(page);

			rn = FUNC0(page);
			sum_entry->nid = rn->footer.nid;
			sum_entry->version = 0;
			sum_entry->ofs_in_node = 0;
			sum_entry++;
			FUNC6(page, 1);
		}

		FUNC8(FUNC2(sbi), addr,
							addr + nrpages);
	}
	return 0;
}