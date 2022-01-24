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
typedef  int umode_t ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int EMLINK ; 
 int ENOSPC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  ext4_dir_inode_operations ; 
 int /*<<< orphan*/  ext4_dir_operations ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct inode*,struct inode*) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 
 struct inode* FUNC15 (struct inode*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	handle_t *handle;
	struct inode *inode;
	int err, credits, retries = 0;

	if (FUNC1(dir))
		return -EMLINK;

	err = FUNC7(dir);
	if (err)
		return err;

	credits = (FUNC0(dir->i_sb) +
		   EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3);
retry:
	inode = FUNC15(dir, S_IFDIR | mode,
					    &dentry->d_name,
					    0, NULL, EXT4_HT_DIR, credits);
	handle = FUNC12();
	err = FUNC4(inode);
	if (FUNC3(inode))
		goto out_stop;

	inode->i_op = &ext4_dir_inode_operations;
	inode->i_fop = &ext4_dir_operations;
	err = FUNC11(handle, dir, inode);
	if (err)
		goto out_clear_inode;
	err = FUNC14(handle, inode);
	if (!err)
		err = FUNC8(handle, dentry, inode);
	if (err) {
out_clear_inode:
		FUNC5(inode);
		FUNC19(inode);
		FUNC14(handle, inode);
		FUNC18(inode);
		goto out_stop;
	}
	FUNC10(handle, dir);
	FUNC17(dir);
	err = FUNC14(handle, dir);
	if (err)
		goto out_clear_inode;
	FUNC6(dentry, inode);
	if (FUNC2(dir))
		FUNC9(handle);

out_stop:
	if (handle)
		FUNC13(handle);
	if (err == -ENOSPC && FUNC16(dir->i_sb, &retries))
		goto retry;
	return err;
}