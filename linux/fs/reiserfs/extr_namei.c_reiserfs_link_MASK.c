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
struct reiserfs_transaction_handle {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int EMLINK ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 scalar_t__ REISERFS_LINK_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct reiserfs_transaction_handle*) ; 
 int FUNC10 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct dentry *old_dentry, struct inode *dir,
			 struct dentry *dentry)
{
	int retval;
	struct inode *inode = FUNC2(old_dentry);
	struct reiserfs_transaction_handle th;
	/*
	 * We need blocks for transaction + update of quotas for
	 * the owners of the directory
	 */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 3 +
	    2 * FUNC0(dir->i_sb);

	retval = FUNC4(dir);
	if (retval)
		return retval;

	FUNC13(dir->i_sb);
	if (inode->i_nlink >= REISERFS_LINK_MAX) {
		/* FIXME: sd_nlink is 32 bit for new files */
		FUNC14(dir->i_sb);
		return -EMLINK;
	}

	/* inc before scheduling so reiserfs_unlink knows we are here */
	FUNC7(inode);

	retval = FUNC8(&th, dir->i_sb, jbegin_count);
	if (retval) {
		FUNC5(inode);
		FUNC14(dir->i_sb);
		return retval;
	}

	/* create new entry */
	retval =
	    FUNC10(&th, dir, dentry->d_name.name,
			       dentry->d_name.len, inode, 1 /*visible */ );

	FUNC11(inode);
	FUNC11(dir);

	if (retval) {
		int err;
		FUNC5(inode);
		err = FUNC9(&th);
		FUNC14(dir->i_sb);
		return err ? err : retval;
	}

	inode->i_ctime = FUNC1(inode);
	FUNC12(&th, inode);

	FUNC6(inode);
	FUNC3(dentry, inode);
	retval = FUNC9(&th);
	FUNC14(dir->i_sb);
	return retval;
}