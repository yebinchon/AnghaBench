#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int dummy; } ;
struct inode {TYPE_2__* i_sb; TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_4__ d_name; } ;
struct TYPE_10__ {int /*<<< orphan*/  s_blocksize; } ;
struct TYPE_9__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (struct reiserfs_transaction_handle*,TYPE_2__*,int) ; 
 int FUNC11 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC15 (TYPE_2__*) ; 
 int FUNC16 (struct inode*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int) ; 
 int /*<<< orphan*/  reiserfs_address_space_operations ; 
 int FUNC19 (struct reiserfs_transaction_handle*,struct inode*,int,char*,int /*<<< orphan*/ ,struct dentry*,struct inode*,struct reiserfs_security_handle*) ; 
 int FUNC20 (struct inode*,struct inode*,TYPE_4__*,struct reiserfs_security_handle*) ; 
 int /*<<< orphan*/  reiserfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 int /*<<< orphan*/  FUNC26 (struct inode*) ; 

__attribute__((used)) static int FUNC27(struct inode *parent_dir,
			    struct dentry *dentry, const char *symname)
{
	int retval;
	struct inode *inode;
	char *name;
	int item_len;
	struct reiserfs_transaction_handle th;
	struct reiserfs_security_handle security;
	int mode = S_IFLNK | S_IRWXUGO;
	/*
	 * We need blocks for transaction + (user+group)*(quotas for
	 * new inode + update of quota for directory owner)
	 */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 3 +
	    2 * (FUNC1(parent_dir->i_sb) +
		 FUNC2(parent_dir->i_sb));

	retval = FUNC5(parent_dir);
	if (retval)
		return retval;

	if (!(inode = FUNC15(parent_dir->i_sb))) {
		return -ENOMEM;
	}
	retval = FUNC16(inode, parent_dir, mode);
	if (retval) {
		FUNC6(inode);
		return retval;
	}

	retval = FUNC20(parent_dir, inode, &dentry->d_name,
					&security);
	if (retval < 0) {
		FUNC6(inode);
		return retval;
	}
	jbegin_count += retval;

	FUNC23(parent_dir->i_sb);
	item_len = FUNC3(FUNC25(symname));
	if (item_len > FUNC0(parent_dir->i_sb->s_blocksize)) {
		retval = -ENAMETOOLONG;
		FUNC6(inode);
		goto out_failed;
	}

	name = FUNC13(item_len, GFP_NOFS);
	if (!name) {
		FUNC6(inode);
		retval = -ENOMEM;
		goto out_failed;
	}
	FUNC14(name, symname, FUNC25(symname));
	FUNC17(name, item_len, FUNC25(symname));

	retval = FUNC10(&th, parent_dir->i_sb, jbegin_count);
	if (retval) {
		FUNC6(inode);
		FUNC12(name);
		goto out_failed;
	}

	retval =
	    FUNC19(&th, parent_dir, mode, name, FUNC25(symname),
			       dentry, inode, &security);
	FUNC12(name);
	if (retval) {		/* reiserfs_new_inode iputs for us */
		goto out_failed;
	}

	FUNC21(inode);
	FUNC21(parent_dir);

	inode->i_op = &reiserfs_symlink_inode_operations;
	FUNC8(inode);
	inode->i_mapping->a_ops = &reiserfs_address_space_operations;

	retval = FUNC18(&th, parent_dir, dentry->d_name.name,
				    dentry->d_name.len, inode, 1 /*visible */ );
	if (retval) {
		int err;
		FUNC7(inode);
		FUNC22(&th, inode);
		err = FUNC11(&th);
		if (err)
			retval = err;
		FUNC26(inode);
		FUNC9(inode);
		goto out_failed;
	}

	FUNC4(dentry, inode);
	retval = FUNC11(&th);
out_failed:
	FUNC24(parent_dir->i_sb);
	return retval;
}