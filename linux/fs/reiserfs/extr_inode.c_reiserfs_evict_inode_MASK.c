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
struct inode {int i_state; scalar_t__ i_blocks; int /*<<< orphan*/  i_sb; scalar_t__ i_nlink; int /*<<< orphan*/  i_data; } ;
struct TYPE_2__ {scalar_t__ k_objectid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int I_NEW ; 
 int JOURNAL_PER_BALANCE_CNT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct reiserfs_transaction_handle*) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_transaction_handle*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void FUNC19(struct inode *inode)
{
	/*
	 * We need blocks for transaction + (user+group) quota
	 * update (possibly delete)
	 */
	int jbegin_count =
	    JOURNAL_PER_BALANCE_CNT * 2 +
	    2 * FUNC1(inode->i_sb);
	struct reiserfs_transaction_handle th;
	int err;

	if (!inode->i_nlink && !FUNC6(inode))
		FUNC5(inode);

	FUNC18(&inode->i_data);
	if (inode->i_nlink)
		goto no_delete;

	/*
	 * The = 0 happens when we abort creating a new inode
	 * for some reason like lack of space..
	 * also handles bad_inode case
	 */
	if (!(inode->i_state & I_NEW) && FUNC0(inode)->k_objectid != 0) {

		FUNC10(inode);

		FUNC13(inode->i_sb);

		if (FUNC7(&th, inode->i_sb, jbegin_count))
			goto out;
		FUNC12(inode);

		FUNC11(&th, inode);

		err = FUNC9(&th, inode);

		/*
		 * Do quota update inside a transaction for journaled quotas.
		 * We must do that after delete_object so that quota updates
		 * go into the same transaction as stat data deletion
		 */
		if (!err) {
			int depth = FUNC16(inode->i_sb);
			FUNC4(inode);
			FUNC14(inode->i_sb, depth);
		}

		if (FUNC8(&th))
			goto out;

		/*
		 * check return value from reiserfs_delete_object after
		 * ending the transaction
		 */
		if (err)
		    goto out;

		/*
		 * all items of file are deleted, so we can remove
		 * "save" link
		 * we can't do anything about an error here
		 */
		FUNC17(inode, 0 /* not truncate */);
out:
		FUNC15(inode->i_sb);
	} else {
		/* no object items are in the tree */
		;
	}

	/* note this must go after the journal_end to prevent deadlock */
	FUNC2(inode);

	FUNC3(inode);
	inode->i_blocks = 0;
	return;

no_delete:
	FUNC2(inode);
	FUNC3(inode);
}