#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_key {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  k_objectid; } ;
struct TYPE_5__ {int i_flags; } ;
struct TYPE_4__ {int s_blocksize; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JOURNAL_PER_BALANCE_CNT ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  MAX_KEY_OBJECTID ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  TYPE_DIRECT ; 
 int /*<<< orphan*/  TYPE_INDIRECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int i_link_saved_truncate_mask ; 
 int i_link_saved_unlink_mask ; 
 int FUNC3 (struct reiserfs_transaction_handle*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct reiserfs_transaction_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ *,struct reiserfs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct reiserfs_key*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct reiserfs_key*,int /*<<< orphan*/ ) ; 

int FUNC9(struct inode *inode, int truncate)
{
	struct reiserfs_transaction_handle th;
	struct reiserfs_key key;
	int err;

	/* we are going to do one balancing only */
	err = FUNC3(&th, inode->i_sb, JOURNAL_PER_BALANCE_CNT);
	if (err)
		return err;

	/* setup key of "save" link */
	key.k_dir_id = FUNC2(MAX_KEY_OBJECTID);
	key.k_objectid = FUNC0(inode)->k_objectid;
	if (!truncate) {
		/* unlink, rmdir, rename */
		FUNC7(KEY_FORMAT_3_5, &key,
				    1 + inode->i_sb->s_blocksize);
		FUNC8(KEY_FORMAT_3_5, &key, TYPE_DIRECT);
	} else {
		/* truncate */
		FUNC7(KEY_FORMAT_3_5, &key, 1);
		FUNC8(KEY_FORMAT_3_5, &key, TYPE_INDIRECT);
	}

	if ((truncate &&
	     (FUNC1(inode)->i_flags & i_link_saved_truncate_mask)) ||
	    (!truncate &&
	     (FUNC1(inode)->i_flags & i_link_saved_unlink_mask)))
		/* don't take quota bytes from anywhere */
		FUNC5(&th, NULL, &key);
	if (!truncate) {
		FUNC6(&th, inode->i_ino);
		FUNC1(inode)->i_flags &= ~i_link_saved_unlink_mask;
	} else
		FUNC1(inode)->i_flags &= ~i_link_saved_truncate_mask;

	return FUNC4(&th);
}