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
typedef  int /*<<< orphan*/  umode_t ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct reiserfs_transaction_handle*) ; 
 struct inode* FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int FUNC14 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ; 
 int FUNC15 (struct inode*,struct inode*,TYPE_1__*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  reiserfs_special_inode_operations ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 

__attribute__((used)) static int FUNC21(struct inode *dir, struct dentry *dentry, umode_t mode,
			  dev_t rdev)
{
	int retval;
	struct inode *inode;
	struct reiserfs_transaction_handle th;
	struct reiserfs_security_handle security;
	/*
	 * We need blocks for transaction + (user+group)*(quotas
	 * for new inode + update of quota for directory owner)
	 */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 3 +
	    2 * (FUNC0(dir->i_sb) +
		 FUNC1(dir->i_sb));

	retval = FUNC3(dir);
	if (retval)
		return retval;

	if (!(inode = FUNC10(dir->i_sb))) {
		return -ENOMEM;
	}
	retval = FUNC11(inode, dir, mode);
	if (retval) {
		FUNC4(inode);
		return retval;
	}

	jbegin_count += FUNC13(dir);
	retval = FUNC15(dir, inode, &dentry->d_name, &security);
	if (retval < 0) {
		FUNC4(inode);
		return retval;
	}
	jbegin_count += retval;
	FUNC18(dir->i_sb);

	retval = FUNC8(&th, dir->i_sb, jbegin_count);
	if (retval) {
		FUNC4(inode);
		goto out_failed;
	}

	retval =
	    FUNC14(&th, dir, mode, NULL, 0 /*i_size */ , dentry,
			       inode, &security);
	if (retval) {
		goto out_failed;
	}

	inode->i_op = &reiserfs_special_inode_operations;
	FUNC6(inode, inode->i_mode, rdev);

	/* FIXME: needed for block and char devices only */
	FUNC17(&th, inode);

	FUNC16(inode);
	FUNC16(dir);

	retval =
	    FUNC12(&th, dir, dentry->d_name.name,
			       dentry->d_name.len, inode, 1 /*visible */ );
	if (retval) {
		int err;
		FUNC5(inode);
		FUNC17(&th, inode);
		err = FUNC9(&th);
		if (err)
			retval = err;
		FUNC20(inode);
		FUNC7(inode);
		goto out_failed;
	}

	FUNC2(dentry, inode);
	retval = FUNC9(&th);

out_failed:
	FUNC19(dir->i_sb);
	return retval;
}