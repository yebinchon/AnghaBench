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
struct inode {int i_blocks; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mode; } ;
struct dnode_of_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 int /*<<< orphan*/  SBI_NEED_FSCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dnode_of_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct dnode_of_data*,int) ; 
 int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC10 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct dnode_of_data*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct inode *inode)
{
	struct dnode_of_data dn;
	int err;

	FUNC10(&dn, inode, NULL, NULL, inode->i_ino);
	err = FUNC5(&dn, 0, LOOKUP_NODE);
	if (err)
		return err;

	err = FUNC8(inode);
	if (err) {
		FUNC6(&dn);
		return err;
	}

	/* remove potential inline_data blocks */
	if (FUNC3(inode->i_mode) || FUNC1(inode->i_mode) ||
				FUNC2(inode->i_mode))
		FUNC7(&dn, 1);

	/* 0 is possible, after f2fs_new_inode() has failed */
	if (FUNC13(FUNC4(FUNC0(inode)))) {
		FUNC6(&dn);
		return -EIO;
	}

	if (FUNC13(inode->i_blocks != 0 && inode->i_blocks != 8)) {
		FUNC9(FUNC0(inode), "Inconsistent i_blocks, ino:%lu, iblocks:%llu",
			  inode->i_ino, (unsigned long long)inode->i_blocks);
		FUNC11(FUNC0(inode), SBI_NEED_FSCK);
	}

	/* will put inode & node pages */
	err = FUNC12(&dn);
	if (err) {
		FUNC6(&dn);
		return err;
	}
	return 0;
}