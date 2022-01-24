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
struct nfs_inode {unsigned long flags; int cache_validity; } ;
struct inode {int /*<<< orphan*/  i_lock; } ;

/* Variables and functions */
 int ECHILD ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALIDATING ; 
 int NFS_INO_INVALID_DATA ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long*) ; 

int FUNC6(struct inode *inode)
{
	struct nfs_inode *nfsi = FUNC1(inode);
	unsigned long *bitlock = &nfsi->flags;
	int ret = 0;

	if (FUNC0(inode))
		goto out;
	if (FUNC2(inode)) {
		ret = -ECHILD;
		goto out;
	}
	FUNC3(&inode->i_lock);
	if (FUNC5(NFS_INO_INVALIDATING, bitlock) ||
	    (nfsi->cache_validity & NFS_INO_INVALID_DATA))
		ret = -ECHILD;
	FUNC4(&inode->i_lock);
out:
	return ret;
}