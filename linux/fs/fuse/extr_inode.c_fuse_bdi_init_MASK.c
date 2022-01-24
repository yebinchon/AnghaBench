#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* s_bdi; scalar_t__ s_bdev; } ;
struct fuse_conn {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int capabilities; int /*<<< orphan*/  ra_pages; } ;

/* Variables and functions */
 int BDI_CAP_NO_ACCT_WB ; 
 int BDI_CAP_STRICTLIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_READAHEAD_PAGES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 TYPE_1__ noop_backing_dev_info ; 
 int FUNC4 (struct super_block*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct fuse_conn *fc, struct super_block *sb)
{
	int err;
	char *suffix = "";

	if (sb->s_bdev) {
		suffix = "-fuseblk";
		/*
		 * sb->s_bdi points to blkdev's bdi however we want to redirect
		 * it to our private bdi...
		 */
		FUNC2(sb->s_bdi);
		sb->s_bdi = &noop_backing_dev_info;
	}
	err = FUNC4(sb, "%u:%u%s", FUNC0(fc->dev),
				   FUNC1(fc->dev), suffix);
	if (err)
		return err;

	sb->s_bdi->ra_pages = VM_READAHEAD_PAGES;
	/* fuse does it's own writeback accounting */
	sb->s_bdi->capabilities = BDI_CAP_NO_ACCT_WB | BDI_CAP_STRICTLIMIT;

	/*
	 * For a single fuse filesystem use max 1% of dirty +
	 * writeback threshold.
	 *
	 * This gives about 1M of write buffer for memory maps on a
	 * machine with 1G and 10% dirty_ratio, which should be more
	 * than enough.
	 *
	 * Privileged users can raise it by writing to
	 *
	 *    /sys/class/bdi/<bdi>/max_ratio
	 */
	FUNC3(sb->s_bdi, 1);

	return 0;
}