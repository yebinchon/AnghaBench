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
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 int /*<<< orphan*/  EXT4_INODE_EXTENTS ; 
 int /*<<< orphan*/  EXT4_STATE_VERITY_IN_PROGRESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC5 (struct inode*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,char*) ; 
 struct inode* FUNC13 (struct file*) ; 

__attribute__((used)) static int FUNC14(struct file *filp)
{
	struct inode *inode = FUNC13(filp);
	const int credits = 2; /* superblock and inode for ext4_orphan_add() */
	handle_t *handle;
	int err;

	if (FUNC11(inode))
		return -EBUSY;

	/*
	 * Since the file was opened readonly, we have to initialize the jbd
	 * inode and quotas here and not rely on ->open() doing it.  This must
	 * be done before evicting the inline data.
	 */

	err = FUNC4(inode);
	if (err)
		return err;

	err = FUNC2(inode);
	if (err)
		return err;

	err = FUNC3(inode);
	if (err)
		return err;

	if (!FUNC9(inode, EXT4_INODE_EXTENTS)) {
		FUNC12(inode,
				   "verity is only allowed on extent-based files");
		return -EOPNOTSUPP;
	}

	/*
	 * ext4 uses the last allocated block to find the verity descriptor, so
	 * we must remove any other blocks past EOF which might confuse things.
	 */
	err = FUNC10(inode);
	if (err)
		return err;

	handle = FUNC5(inode, EXT4_HT_INODE, credits);
	if (FUNC0(handle))
		return FUNC1(handle);

	err = FUNC7(handle, inode);
	if (err == 0)
		FUNC8(inode, EXT4_STATE_VERITY_IN_PROGRESS);

	FUNC6(handle);
	return err;
}