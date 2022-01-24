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
struct nfs_delegation {int /*<<< orphan*/  lock; struct inode* inode; int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_RETURN ; 
 int /*<<< orphan*/  NFS_DELEGATION_RETURNING ; 
 int /*<<< orphan*/  NFS_DELEGATION_RETURN_IF_CLOSED ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct nfs_delegation *delegation)
{
	bool ret = false;

	if (FUNC5(NFS_DELEGATION_RETURNING, &delegation->flags))
		goto out;
	if (FUNC4(NFS_DELEGATION_RETURN, &delegation->flags))
		ret = true;
	if (FUNC4(NFS_DELEGATION_RETURN_IF_CLOSED, &delegation->flags) && !ret) {
		struct inode *inode;

		FUNC2(&delegation->lock);
		inode = delegation->inode;
		if (inode && FUNC1(&FUNC0(inode)->open_files))
			ret = true;
		FUNC3(&delegation->lock);
	}
out:
	return ret;
}