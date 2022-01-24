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
struct writeback_control {scalar_t__ sync_mode; int nr_to_write; } ;
struct nfs_commit_info {int /*<<< orphan*/  mds; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int FLUSH_SYNC ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WB_SYNC_NONE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ *,int,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_commit_info*,struct inode*) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ *,struct nfs_commit_info*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, int how,
		struct writeback_control *wbc)
{
	FUNC0(head);
	struct nfs_commit_info cinfo;
	int may_wait = how & FLUSH_SYNC;
	int ret, nscan;

	FUNC5(&cinfo, inode);
	FUNC2(cinfo.mds);
	for (;;) {
		ret = nscan = FUNC6(inode, &head, &cinfo);
		if (ret <= 0)
			break;
		ret = FUNC4(inode, &head, how, &cinfo);
		if (ret < 0)
			break;
		ret = 0;
		if (wbc && wbc->sync_mode == WB_SYNC_NONE) {
			if (nscan < wbc->nr_to_write)
				wbc->nr_to_write -= nscan;
			else
				wbc->nr_to_write = 0;
		}
		if (nscan < INT_MAX)
			break;
		FUNC1();
	}
	FUNC3(cinfo.mds);
	if (ret || !may_wait)
		return ret;
	return FUNC7(cinfo.mds);
}