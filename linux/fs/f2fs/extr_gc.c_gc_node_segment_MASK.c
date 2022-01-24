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
struct page {int dummy; } ;
struct node_info {scalar_t__ blk_addr; } ;
struct f2fs_summary {int /*<<< orphan*/  nid; } ;
struct f2fs_sb_info {int blocks_per_seg; int /*<<< orphan*/ * wb_sync_req; } ;
typedef  int /*<<< orphan*/  nid_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 int BG_GC ; 
 int FG_GC ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  META_NAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t NODE ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*,unsigned int,int) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 struct page* FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,int,int) ; 

__attribute__((used)) static int FUNC15(struct f2fs_sb_info *sbi,
		struct f2fs_summary *sum, unsigned int segno, int gc_type)
{
	struct f2fs_summary *entry;
	block_t start_addr;
	int off;
	int phase = 0;
	bool fggc = (gc_type == FG_GC);
	int submitted = 0;

	start_addr = FUNC2(sbi, segno);

next_step:
	entry = sum;

	if (fggc && phase == 2)
		FUNC4(&sbi->wb_sync_req[NODE]);

	for (off = 0; off < sbi->blocks_per_seg; off++, entry++) {
		nid_t nid = FUNC13(entry->nid);
		struct page *node_page;
		struct node_info ni;
		int err;

		/* stop BG_GC if there is not enough free sections. */
		if (gc_type == BG_GC && FUNC12(sbi, 0, 0))
			return submitted;

		if (FUNC5(sbi, segno, off) == 0)
			continue;

		if (phase == 0) {
			FUNC10(sbi, FUNC1(nid), 1,
							META_NAT, true);
			continue;
		}

		if (phase == 1) {
			FUNC11(sbi, nid);
			continue;
		}

		/* phase == 2 */
		node_page = FUNC7(sbi, nid);
		if (FUNC0(node_page))
			continue;

		/* block may become invalid during f2fs_get_node_page */
		if (FUNC5(sbi, segno, off) == 0) {
			FUNC9(node_page, 1);
			continue;
		}

		if (FUNC6(sbi, nid, &ni)) {
			FUNC9(node_page, 1);
			continue;
		}

		if (ni.blk_addr != start_addr + off) {
			FUNC9(node_page, 1);
			continue;
		}

		err = FUNC8(node_page, gc_type);
		if (!err && gc_type == FG_GC)
			submitted++;
		FUNC14(sbi, 1, gc_type);
	}

	if (++phase < 3)
		goto next_step;

	if (fggc)
		FUNC3(&sbi->wb_sync_req[NODE]);
	return submitted;
}