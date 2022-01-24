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
struct writeback_control {scalar_t__ sync_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  rpcs_out; int /*<<< orphan*/  ncommit; } ;
struct nfs_inode {TYPE_1__ commit_info; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int FLUSH_SYNC ; 
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  PAGECACHE_TAG_WRITEBACK ; 
 scalar_t__ WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int,struct writeback_control*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct inode *inode, struct writeback_control *wbc)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	int flags = FLUSH_SYNC;
	int ret = 0;

	if (wbc->sync_mode == WB_SYNC_NONE) {
		/* no commits means nothing needs to be done */
		if (!FUNC3(&nfsi->commit_info.ncommit))
			goto check_requests_outstanding;

		/* Don't commit yet if this is a non-blocking flush and there
		 * are a lot of outstanding writes for this mapping.
		 */
		if (FUNC5(inode->i_mapping, PAGECACHE_TAG_WRITEBACK))
			goto out_mark_dirty;

		/* don't wait for the COMMIT response */
		flags = 0;
	}

	ret = FUNC2(inode, flags, wbc);
	if (!ret) {
		if (flags & FLUSH_SYNC)
			return 0;
	} else if (FUNC3(&nfsi->commit_info.ncommit))
		goto out_mark_dirty;

check_requests_outstanding:
	if (!FUNC4(&nfsi->commit_info.rpcs_out))
		return ret;
out_mark_dirty:
	FUNC1(inode, I_DIRTY_DATASYNC);
	return ret;
}