#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_projid; } ;

/* Variables and functions */
 int EMLINK ; 
 int ENOSPC ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_HT_DIR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ EXT4_INDEX_EXTRA_TRANS_BLOCKS ; 
 int /*<<< orphan*/  EXT4_INODE_PROJINHERIT ; 
 int EXT4_LINK_MAX ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,struct inode*) ; 
 int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/ * FUNC13 (struct inode*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct dentry*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct dentry *old_dentry,
		     struct inode *dir, struct dentry *dentry)
{
	handle_t *handle;
	struct inode *inode = FUNC6(old_dentry);
	int err, retries = 0;

	if (inode->i_nlink >= EXT4_LINK_MAX)
		return -EMLINK;

	err = FUNC19(old_dentry, dir, dentry);
	if (err)
		return err;

	if ((FUNC18(dir, EXT4_INODE_PROJINHERIT)) &&
	    (!FUNC22(FUNC1(dir)->i_projid,
			FUNC1(old_dentry->d_inode)->i_projid)))
		return -EXDEV;

	err = FUNC8(dir);
	if (err)
		return err;

retry:
	handle = FUNC13(dir, EXT4_HT_DIR,
		(FUNC0(dir->i_sb) +
		 EXT4_INDEX_EXTRA_TRANS_BLOCKS) + 1);
	if (FUNC3(handle))
		return FUNC4(handle);

	if (FUNC2(dir))
		FUNC11(handle);

	inode->i_ctime = FUNC5(inode);
	FUNC12(handle, inode);
	FUNC20(inode);

	err = FUNC10(handle, dentry, inode);
	if (!err) {
		FUNC15(handle, inode);
		/* this can happen only for tmpfile being
		 * linked the first time
		 */
		if (inode->i_nlink == 1)
			FUNC16(handle, inode);
		FUNC7(dentry, inode);
	} else {
		FUNC9(inode);
		FUNC21(inode);
	}
	FUNC14(handle);
	if (err == -ENOSPC && FUNC17(dir->i_sb, &retries))
		goto retry;
	return err;
}