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
struct writeback_control {scalar_t__ sync_mode; int /*<<< orphan*/  pages_skipped; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * wb_sync_req; int /*<<< orphan*/  writepages; } ;
struct blk_plug {int dummy; } ;
struct address_space {struct inode* host; TYPE_1__* a_ops; } ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;
struct TYPE_2__ {int /*<<< orphan*/  writepage; } ;

/* Variables and functions */
 size_t DATA ; 
 int /*<<< orphan*/  DIRTY_DENTS ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_DO_DEFRAG ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ WB_SYNC_ALL ; 
 scalar_t__ WB_SYNC_NONE ; 
 scalar_t__ FUNC3 (struct inode*,struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC8 (struct blk_plug*) ; 
 scalar_t__ FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct address_space*,struct writeback_control*,int) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct f2fs_sb_info*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct writeback_control*,size_t) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct address_space *mapping,
						struct writeback_control *wbc,
						enum iostat_type io_type)
{
	struct inode *inode = mapping->host;
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct blk_plug plug;
	int ret;
	bool locked = false;

	/* deal with chardevs and other special file */
	if (!mapping->a_ops->writepage)
		return 0;

	/* skip writing if there is no dirty page in this inode */
	if (!FUNC12(inode) && wbc->sync_mode == WB_SYNC_NONE)
		return 0;

	/* during POR, we don't need to trigger writepage at all. */
	if (FUNC19(FUNC14(sbi, SBI_POR_DOING)))
		goto skip_write;

	if ((FUNC2(inode->i_mode) || FUNC1(inode)) &&
			wbc->sync_mode == WB_SYNC_NONE &&
			FUNC12(inode) < FUNC17(sbi, DATA) &&
			FUNC9(sbi, DIRTY_DENTS))
		goto skip_write;

	/* skip writing during file defragment */
	if (FUNC13(inode, FI_DO_DEFRAG))
		goto skip_write;

	FUNC18(mapping->host, wbc, DATA);

	/* to avoid spliting IOs due to mixed WB_SYNC_ALL and WB_SYNC_NONE */
	if (wbc->sync_mode == WB_SYNC_ALL)
		FUNC5(&sbi->wb_sync_req[DATA]);
	else if (FUNC6(&sbi->wb_sync_req[DATA]))
		goto skip_write;

	if (FUNC3(inode, wbc)) {
		FUNC15(&sbi->writepages);
		locked = true;
	}

	FUNC8(&plug);
	ret = FUNC11(mapping, wbc, io_type);
	FUNC7(&plug);

	if (locked)
		FUNC16(&sbi->writepages);

	if (wbc->sync_mode == WB_SYNC_ALL)
		FUNC4(&sbi->wb_sync_req[DATA]);
	/*
	 * if some pages were truncated, we cannot guarantee its mapping->host
	 * to detect pending bios.
	 */

	FUNC10(inode);
	return ret;

skip_write:
	wbc->pages_skipped += FUNC12(inode);
	FUNC18(mapping->host, wbc, DATA);
	return 0;
}