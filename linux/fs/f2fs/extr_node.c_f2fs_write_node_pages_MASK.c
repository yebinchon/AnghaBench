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
struct writeback_control {scalar_t__ sync_mode; int /*<<< orphan*/  pages_skipped; int /*<<< orphan*/  nr_to_write; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * wb_sync_req; } ;
struct blk_plug {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 struct f2fs_sb_info* FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FS_NODE_IO ; 
 size_t NODE ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,struct writeback_control*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct f2fs_sb_info*,size_t) ; 
 long FUNC12 (struct f2fs_sb_info*,size_t,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct writeback_control*,size_t) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct address_space *mapping,
			    struct writeback_control *wbc)
{
	struct f2fs_sb_info *sbi = FUNC0(mapping);
	struct blk_plug plug;
	long diff;

	if (FUNC14(FUNC9(sbi, SBI_POR_DOING)))
		goto skip_write;

	/* balancing f2fs's metadata in background */
	FUNC6(sbi);

	/* collect a number of dirty node pages and write together */
	if (wbc->sync_mode != WB_SYNC_ALL &&
			FUNC8(sbi, F2FS_DIRTY_NODES) <
					FUNC11(sbi, NODE))
		goto skip_write;

	if (wbc->sync_mode == WB_SYNC_ALL)
		FUNC2(&sbi->wb_sync_req[NODE]);
	else if (FUNC3(&sbi->wb_sync_req[NODE]))
		goto skip_write;

	FUNC13(mapping->host, wbc, NODE);

	diff = FUNC12(sbi, NODE, wbc);
	FUNC5(&plug);
	FUNC7(sbi, wbc, true, FS_NODE_IO);
	FUNC4(&plug);
	wbc->nr_to_write = FUNC10((long)0, wbc->nr_to_write - diff);

	if (wbc->sync_mode == WB_SYNC_ALL)
		FUNC1(&sbi->wb_sync_req[NODE]);
	return 0;

skip_write:
	wbc->pages_skipped += FUNC8(sbi, F2FS_DIRTY_NODES);
	FUNC13(mapping->host, wbc, NODE);
	return 0;
}