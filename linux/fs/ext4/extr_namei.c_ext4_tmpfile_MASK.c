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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EXT4_XATTR_TRANS_BLOCKS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  ext4_file_inode_operations ; 
 int /*<<< orphan*/  ext4_file_operations ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC7 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

__attribute__((used)) static int FUNC13(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	handle_t *handle;
	struct inode *inode;
	int err, retries = 0;

	err = FUNC4(dir);
	if (err)
		return err;

retry:
	inode = FUNC7(dir, mode,
					    NULL, 0, NULL,
					    EXT4_HT_DIR,
			FUNC0(dir->i_sb) +
			  4 + EXT4_XATTR_TRANS_BLOCKS);
	handle = FUNC5();
	err = FUNC2(inode);
	if (!FUNC1(inode)) {
		inode->i_op = &ext4_file_inode_operations;
		inode->i_fop = &ext4_file_operations;
		FUNC9(inode);
		FUNC3(dentry, inode);
		err = FUNC8(handle, inode);
		if (err)
			goto err_unlock_inode;
		FUNC11(inode);
		FUNC12(inode);
	}
	if (handle)
		FUNC6(handle);
	if (err == -ENOSPC && FUNC10(dir->i_sb, &retries))
		goto retry;
	return err;
err_unlock_inode:
	FUNC6(handle);
	FUNC12(inode);
	return err;
}