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
struct nfs_delegation {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/ * inode; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_DELEGATION_INODE_FREEING ; 
 struct inode* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *FUNC4(struct nfs_delegation *delegation)
{
	struct inode *inode = NULL;

	FUNC2(&delegation->lock);
	if (delegation->inode != NULL)
		inode = FUNC0(delegation->inode);
	if (!inode)
		FUNC1(NFS_DELEGATION_INODE_FREEING, &delegation->flags);
	FUNC3(&delegation->lock);
	return inode;
}