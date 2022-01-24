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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file {int dummy; } ;
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 int /*<<< orphan*/  EXT4_INODE_VERITY ; 
 int /*<<< orphan*/  EXT4_STATE_VERITY_IN_PROGRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,void const*,size_t,int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (struct file*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct file *filp, const void *desc,
				  size_t desc_size, u64 merkle_tree_size)
{
	struct inode *inode = FUNC12(filp);
	const int credits = 2; /* superblock and inode for ext4_orphan_del() */
	handle_t *handle;
	int err = 0;
	int err2;

	if (desc != NULL) {
		/* Succeeded; write the verity descriptor. */
		err = FUNC11(inode, desc, desc_size,
						   merkle_tree_size);

		/* Write all pages before clearing VERITY_IN_PROGRESS. */
		if (!err)
			err = FUNC13(inode->i_mapping);
	}

	/* If we failed, truncate anything we wrote past i_size. */
	if (desc == NULL || err)
		FUNC10(inode);

	/*
	 * We must always clean up by clearing EXT4_STATE_VERITY_IN_PROGRESS and
	 * deleting the inode from the orphan list, even if something failed.
	 * If everything succeeded, we'll also set the verity bit in the same
	 * transaction.
	 */

	FUNC2(inode, EXT4_STATE_VERITY_IN_PROGRESS);

	handle = FUNC3(inode, EXT4_HT_INODE, credits);
	if (FUNC0(handle)) {
		FUNC6(NULL, inode);
		return FUNC1(handle);
	}

	err2 = FUNC6(handle, inode);
	if (err2)
		goto out_stop;

	if (desc != NULL && !err) {
		struct ext4_iloc iloc;

		err = FUNC7(handle, inode, &iloc);
		if (err)
			goto out_stop;
		FUNC8(inode, EXT4_INODE_VERITY);
		FUNC9(inode);
		err = FUNC5(handle, inode, &iloc);
	}
out_stop:
	FUNC4(handle);
	return err ?: err2;
}