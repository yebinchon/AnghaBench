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
struct address_space {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct nfs_inode* FUNC1 (struct inode*) ; 
 int NFS_INO_DATA_INVAL_DEFER ; 
 int /*<<< orphan*/  NFS_INO_INVALIDATING ; 
 int NFS_INO_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int FUNC3 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC5 (struct inode*,struct address_space*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  nfs_wait_bit_killable ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int FUNC15 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long*,int /*<<< orphan*/ ) ; 

int FUNC17(struct inode *inode,
		struct address_space *mapping)
{
	struct nfs_inode *nfsi = FUNC1(inode);
	unsigned long *bitlock = &nfsi->flags;
	int ret = 0;

	/* swapfiles are not supposed to be shared. */
	if (FUNC0(inode))
		goto out;

	if (FUNC6(inode)) {
		ret = FUNC3(FUNC2(inode), inode);
		if (ret < 0)
			goto out;
	}

	/*
	 * We must clear NFS_INO_INVALID_DATA first to ensure that
	 * invalidations that come in while we're shooting down the mappings
	 * are respected. But, that leaves a race window where one revalidator
	 * can clear the flag, and then another checks it before the mapping
	 * gets invalidated. Fix that by serializing access to this part of
	 * the function.
	 *
	 * At the same time, we need to allow other tasks to see whether we
	 * might be in the middle of invalidating the pages, so we only set
	 * the bit lock here if it looks like we're going to be doing that.
	 */
	for (;;) {
		ret = FUNC15(bitlock, NFS_INO_INVALIDATING,
					 nfs_wait_bit_killable, TASK_KILLABLE);
		if (ret)
			goto out;
		FUNC10(&inode->i_lock);
		if (FUNC12(NFS_INO_INVALIDATING, bitlock)) {
			FUNC11(&inode->i_lock);
			continue;
		}
		if (nfsi->cache_validity & NFS_INO_INVALID_DATA)
			break;
		FUNC11(&inode->i_lock);
		goto out;
	}

	FUNC7(NFS_INO_INVALIDATING, bitlock);
	FUNC9();
	nfsi->cache_validity &= ~(NFS_INO_INVALID_DATA|
			NFS_INO_DATA_INVAL_DEFER);
	FUNC11(&inode->i_lock);
	FUNC13(inode);
	ret = FUNC5(inode, mapping);
	FUNC14(inode, ret);

	FUNC4(NFS_INO_INVALIDATING, bitlock);
	FUNC8();
	FUNC16(bitlock, NFS_INO_INVALIDATING);
out:
	return ret;
}