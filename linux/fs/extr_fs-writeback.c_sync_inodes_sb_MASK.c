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
struct wb_writeback_work {int for_sync; int /*<<< orphan*/  reason; int /*<<< orphan*/ * done; int /*<<< orphan*/  range_cyclic; int /*<<< orphan*/  nr_pages; int /*<<< orphan*/  sync_mode; struct super_block* sb; } ;
struct super_block {int /*<<< orphan*/  s_umount; struct backing_dev_info* s_bdi; } ;
struct backing_dev_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct backing_dev_info*) ; 
 int /*<<< orphan*/  LONG_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WB_REASON_SYNC ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct backing_dev_info*,struct wb_writeback_work*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  done ; 
 struct backing_dev_info noop_backing_dev_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct super_block *sb)
{
	struct backing_dev_info *bdi = sb->s_bdi;
	FUNC0(done, bdi);
	struct wb_writeback_work work = {
		.sb		= sb,
		.sync_mode	= WB_SYNC_ALL,
		.nr_pages	= LONG_MAX,
		.range_cyclic	= 0,
		.done		= &done,
		.reason		= WB_REASON_SYNC,
		.for_sync	= 1,
	};

	/*
	 * Can't skip on !bdi_has_dirty() because we should wait for !dirty
	 * inodes under writeback and I_DIRTY_TIME inodes ignored by
	 * bdi_has_dirty() need to be written out too.
	 */
	if (bdi == &noop_backing_dev_info)
		return;
	FUNC1(!FUNC5(&sb->s_umount));

	/* protect against inode wb switch, see inode_switch_wbs_work_fn() */
	FUNC2(bdi);
	FUNC3(bdi, &work, false);
	FUNC7(&done);
	FUNC4(bdi);

	FUNC6(sb);
}