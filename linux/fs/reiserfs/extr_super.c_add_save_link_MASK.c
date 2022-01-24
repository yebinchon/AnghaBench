#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; } ;
struct item_head {int dummy; } ;
struct inode {TYPE_2__* i_sb; int /*<<< orphan*/  i_mode; scalar_t__ i_ino; } ;
struct TYPE_8__ {scalar_t__ k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct cpu_key {int key_length; int /*<<< orphan*/  version; TYPE_1__ on_disk_key; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_11__ {int i_flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  k_dir_id; } ;
struct TYPE_9__ {int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 int ITEM_NOT_FOUND ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  MAX_KEY_OBJECTID ; 
 TYPE_6__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_DIRECT ; 
 int /*<<< orphan*/  TYPE_INDIRECT ; 
 int i_link_saved_truncate_mask ; 
 int i_link_saved_unlink_mask ; 
 int /*<<< orphan*/  FUNC6 (struct item_head*,struct cpu_key*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,char*,...) ; 
 int FUNC9 (struct reiserfs_transaction_handle*,int /*<<< orphan*/ *,struct cpu_key*,struct item_head*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,char*,TYPE_4__*) ; 
 int FUNC11 (TYPE_2__*,struct cpu_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct cpu_key*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cpu_key*,int /*<<< orphan*/ ) ; 

void FUNC14(struct reiserfs_transaction_handle *th,
		   struct inode *inode, int truncate)
{
	FUNC1(path);
	int retval;
	struct cpu_key key;
	struct item_head ih;
	__le32 link;

	FUNC0(!th->t_trans_id);

	/* file can only get one "save link" of each kind */
	FUNC4(truncate &&
	       (FUNC3(inode)->i_flags & i_link_saved_truncate_mask),
	       "saved link already exists for truncated inode %lx",
	       (long)inode->i_ino);
	FUNC4(!truncate &&
	       (FUNC3(inode)->i_flags & i_link_saved_unlink_mask),
	       "saved link already exists for unlinked inode %lx",
	       (long)inode->i_ino);

	/* setup key of "save" link */
	key.version = KEY_FORMAT_3_5;
	key.on_disk_key.k_dir_id = MAX_KEY_OBJECTID;
	key.on_disk_key.k_objectid = inode->i_ino;
	if (!truncate) {
		/* unlink, rmdir, rename */
		FUNC12(&key, 1 + inode->i_sb->s_blocksize);
		FUNC13(&key, TYPE_DIRECT);

		/* item head of "safe" link */
		FUNC6(&ih, &key, key.version,
				  1 + inode->i_sb->s_blocksize, TYPE_DIRECT,
				  4 /*length */ , 0xffff /*free space */ );
	} else {
		/* truncate */
		if (FUNC5(inode->i_mode))
			FUNC10(inode->i_sb, "green-2102",
					 "Adding a truncate savelink for "
					 "a directory %k! Please report",
					 FUNC2(inode));
		FUNC12(&key, 1);
		FUNC13(&key, TYPE_INDIRECT);

		/* item head of "safe" link */
		FUNC6(&ih, &key, key.version, 1, TYPE_INDIRECT,
				  4 /*length */ , 0 /*free space */ );
	}
	key.key_length = 3;

	/* look for its place in the tree */
	retval = FUNC11(inode->i_sb, &key, &path);
	if (retval != ITEM_NOT_FOUND) {
		if (retval != -ENOSPC)
			FUNC8(inode->i_sb, "vs-2100",
				       "search_by_key (%K) returned %d", &key,
				       retval);
		FUNC7(&path);
		return;
	}

	/* body of "save" link */
	link = FUNC2(inode)->k_dir_id;

	/* put "save" link into tree, don't charge quota to anyone */
	retval =
	    FUNC9(th, &path, &key, &ih, NULL, (char *)&link);
	if (retval) {
		if (retval != -ENOSPC)
			FUNC8(inode->i_sb, "vs-2120",
				       "insert_item returned %d", retval);
	} else {
		if (truncate)
			FUNC3(inode)->i_flags |=
			    i_link_saved_truncate_mask;
		else
			FUNC3(inode)->i_flags |= i_link_saved_unlink_mask;
	}
}