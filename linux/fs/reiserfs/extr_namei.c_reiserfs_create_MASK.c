#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct reiserfs_transaction_handle*) ; 
 struct inode* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  reiserfs_address_space_operations ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  reiserfs_file_inode_operations ; 
 int /*<<< orphan*/  reiserfs_file_operations ; 
 int FUNC13 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ; 
 int FUNC14 (struct inode*,struct inode*,TYPE_2__*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 

__attribute__((used)) static int FUNC20(struct inode *dir, struct dentry *dentry, umode_t mode,
			   bool excl)
{
	int retval;
	struct inode *inode;
	/*
	 * We need blocks for transaction + (user+group)*(quotas
	 * for new inode + update of quota for directory owner)
	 */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 2 +
	    2 * (FUNC0(dir->i_sb) +
		 FUNC1(dir->i_sb));
	struct reiserfs_transaction_handle th;
	struct reiserfs_security_handle security;

	retval = FUNC3(dir);
	if (retval)
		return retval;

	if (!(inode = FUNC9(dir->i_sb))) {
		return -ENOMEM;
	}
	retval = FUNC10(inode, dir, mode);
	if (retval) {
		FUNC4(inode);
		return retval;
	}

	jbegin_count += FUNC12(dir);
	retval = FUNC14(dir, inode, &dentry->d_name, &security);
	if (retval < 0) {
		FUNC4(inode);
		return retval;
	}
	jbegin_count += retval;
	FUNC17(dir->i_sb);

	retval = FUNC7(&th, dir->i_sb, jbegin_count);
	if (retval) {
		FUNC4(inode);
		goto out_failed;
	}

	retval =
	    FUNC13(&th, dir, mode, NULL, 0 /*i_size */ , dentry,
			       inode, &security);
	if (retval)
		goto out_failed;

	inode->i_op = &reiserfs_file_inode_operations;
	inode->i_fop = &reiserfs_file_operations;
	inode->i_mapping->a_ops = &reiserfs_address_space_operations;

	retval =
	    FUNC11(&th, dir, dentry->d_name.name,
			       dentry->d_name.len, inode, 1 /*visible */ );
	if (retval) {
		int err;
		FUNC5(inode);
		FUNC16(&th, inode);
		err = FUNC8(&th);
		if (err)
			retval = err;
		FUNC19(inode);
		FUNC6(inode);
		goto out_failed;
	}
	FUNC15(inode);
	FUNC15(dir);

	FUNC2(dentry, inode);
	retval = FUNC8(&th);

out_failed:
	FUNC18(dir->i_sb);
	return retval;
}