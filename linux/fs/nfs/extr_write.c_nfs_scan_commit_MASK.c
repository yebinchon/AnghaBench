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
struct nfs_commit_info {int /*<<< orphan*/  inode; TYPE_1__* mds; } ;
struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  commit_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  list; int /*<<< orphan*/  ncommit; } ;

/* Variables and functions */
 int INT_MAX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct list_head*,struct nfs_commit_info*,int const) ; 
 scalar_t__ FUNC5 (struct inode*,struct nfs_commit_info*,int const) ; 

int
FUNC6(struct inode *inode, struct list_head *dst,
		struct nfs_commit_info *cinfo)
{
	int ret = 0;

	if (!FUNC1(&cinfo->mds->ncommit))
		return 0;
	FUNC2(&FUNC0(cinfo->inode)->commit_mutex);
	if (FUNC1(&cinfo->mds->ncommit) > 0) {
		const int max = INT_MAX;

		ret = FUNC4(&cinfo->mds->list, dst,
					   cinfo, max);
		ret += FUNC5(inode, cinfo, max - ret);
	}
	FUNC3(&FUNC0(cinfo->inode)->commit_mutex);
	return ret;
}