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
struct wb_writeback_work {int tagged_writepages; unsigned long nr_pages; int reason; int /*<<< orphan*/ * done; int /*<<< orphan*/  sync_mode; struct super_block* sb; } ;
struct super_block {struct backing_dev_info* s_bdi; int /*<<< orphan*/  s_umount; } ;
struct backing_dev_info {int dummy; } ;
typedef  enum wb_reason { ____Placeholder_wb_reason } wb_reason ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct backing_dev_info*,struct wb_writeback_work*,int) ; 
 int /*<<< orphan*/  done ; 
 struct backing_dev_info noop_backing_dev_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct super_block *sb, unsigned long nr,
				     enum wb_reason reason, bool skip_if_busy)
{
	struct backing_dev_info *bdi = sb->s_bdi;
	FUNC0(done, bdi);
	struct wb_writeback_work work = {
		.sb			= sb,
		.sync_mode		= WB_SYNC_NONE,
		.tagged_writepages	= 1,
		.done			= &done,
		.nr_pages		= nr,
		.reason			= reason,
	};

	if (!FUNC2(bdi) || bdi == &noop_backing_dev_info)
		return;
	FUNC1(!FUNC4(&sb->s_umount));

	FUNC3(sb->s_bdi, &work, skip_if_busy);
	FUNC5(&done);
}