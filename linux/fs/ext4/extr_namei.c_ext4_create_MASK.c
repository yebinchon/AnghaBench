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
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext4_file_inode_operations ; 
 int /*<<< orphan*/  ext4_file_operations ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry, umode_t mode,
		       bool excl)
{
	handle_t *handle;
	struct inode *inode;
	int err, credits, retries = 0;

	err = FUNC4(dir);
	if (err)
		return err;

	credits = (FUNC0(dir->i_sb) +
		   EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3);
retry:
	inode = FUNC9(dir, mode, &dentry->d_name, 0,
					    NULL, EXT4_HT_DIR, credits);
	handle = FUNC7();
	err = FUNC3(inode);
	if (!FUNC2(inode)) {
		inode->i_op = &ext4_file_inode_operations;
		inode->i_fop = &ext4_file_operations;
		FUNC10(inode);
		err = FUNC5(handle, dentry, inode);
		if (!err && FUNC1(dir))
			FUNC6(handle);
	}
	if (handle)
		FUNC8(handle);
	if (err == -ENOSPC && FUNC11(dir->i_sb, &retries))
		goto retry;
	return err;
}