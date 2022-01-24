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
struct nfs_inode {int /*<<< orphan*/  flags; } ;
struct inode {int /*<<< orphan*/  i_rwsem; } ;

/* Variables and functions */
 struct nfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ODIRECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_inode*,struct inode*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC0(inode);
	/* Be an optimist! */
	FUNC1(&inode->i_rwsem);
	if (FUNC5(NFS_INO_ODIRECT, &nfsi->flags) == 0)
		return;
	FUNC6(&inode->i_rwsem);
	/* Slow path.... */
	FUNC2(&inode->i_rwsem);
	FUNC4(nfsi, inode);
	FUNC3(&inode->i_rwsem);
}