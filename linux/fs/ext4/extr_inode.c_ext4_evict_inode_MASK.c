#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_5__ {scalar_t__ nrpages; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_sb; scalar_t__ i_blocks; scalar_t__ i_size; TYPE_1__ i_data; int /*<<< orphan*/  i_mode; scalar_t__ i_nlink; } ;
struct ext4_xattr_inode_array {int dummy; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_7__ {scalar_t__ i_dtime; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_datasync_tid; } ;
struct TYPE_6__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_HT_TRUNCATE ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 scalar_t__ EXT4_JOURNAL_INO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC17 (struct inode*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC21 (struct inode*) ; 
 scalar_t__ FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC26 (int /*<<< orphan*/ *,struct inode*,struct ext4_xattr_inode_array**,int) ; 
 int /*<<< orphan*/  FUNC27 (struct ext4_xattr_inode_array*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 scalar_t__ FUNC29 (struct inode*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_1__*) ; 

void FUNC37(struct inode *inode)
{
	handle_t *handle;
	int err;
	int extra_credits = 3;
	struct ext4_xattr_inode_array *ea_inode_array = NULL;

	FUNC35(inode);

	if (inode->i_nlink) {
		/*
		 * When journalling data dirty buffers are tracked only in the
		 * journal. So although mm thinks everything is clean and
		 * ready for reaping the inode might still have some pages to
		 * write in the running transaction or waiting to be
		 * checkpointed. Thus calling jbd2_journal_invalidatepage()
		 * (via truncate_inode_pages()) to discard these buffers can
		 * cause data loss. Also even if we did not discard these
		 * buffers, we would have no way to find them after the inode
		 * is reaped and thus user could see stale data if he tries to
		 * read them before the transaction is checkpointed. So be
		 * careful and force everything to disk here... We use
		 * ei->i_datasync_tid to store the newest transaction
		 * containing inode's data.
		 *
		 * Note that directories do not have this problem because they
		 * don't use page cache.
		 */
		if (inode->i_ino != EXT4_JOURNAL_INO &&
		    FUNC21(inode) &&
		    (FUNC7(inode->i_mode) || FUNC8(inode->i_mode)) &&
		    inode->i_data.nrpages) {
			journal_t *journal = FUNC2(inode->i_sb)->s_journal;
			tid_t commit_tid = FUNC0(inode)->i_datasync_tid;

			FUNC30(journal, commit_tid);
			FUNC28(&inode->i_data);
		}
		FUNC36(&inode->i_data);

		goto no_delete;
	}

	if (FUNC29(inode))
		goto no_delete;
	FUNC9(inode);

	if (FUNC22(inode))
		FUNC10(inode, 0);
	FUNC36(&inode->i_data);

	/*
	 * Protect us against freezing - iput() caller didn't have to have any
	 * protection against it
	 */
	FUNC34(inode->i_sb);

	if (!FUNC4(inode))
		extra_credits += FUNC1(inode->i_sb);

	handle = FUNC17(inode, EXT4_HT_TRUNCATE,
				 FUNC11(inode)+extra_credits);
	if (FUNC3(handle)) {
		FUNC23(inode->i_sb, FUNC6(handle));
		/*
		 * If we're going to skip the normal cleanup, we still need to
		 * make sure that the in-core orphan linked list is properly
		 * cleaned up.
		 */
		FUNC20(NULL, inode);
		FUNC33(inode->i_sb);
		goto no_delete;
	}

	if (FUNC5(inode))
		FUNC15(handle);

	/*
	 * Set inode->i_size to 0 before calling ext4_truncate(). We need
	 * special handling of symlinks here because i_size is used to
	 * determine whether ext4_inode_info->i_data contains symlink data or
	 * block mappings. Setting i_size to 0 will remove its fast symlink
	 * status. Erase i_data so that it becomes a valid empty block map.
	 */
	if (FUNC16(inode))
		FUNC32(FUNC0(inode)->i_data, 0, sizeof(FUNC0(inode)->i_data));
	inode->i_size = 0;
	err = FUNC19(handle, inode);
	if (err) {
		FUNC25(inode->i_sb,
			     "couldn't mark inode dirty (err %d)", err);
		goto stop_handle;
	}
	if (inode->i_blocks) {
		err = FUNC24(inode);
		if (err) {
			FUNC13(inode->i_sb,
				   "couldn't truncate inode %lu (err %d)",
				   inode->i_ino, err);
			goto stop_handle;
		}
	}

	/* Remove xattr references. */
	err = FUNC26(handle, inode, &ea_inode_array,
				      extra_credits);
	if (err) {
		FUNC25(inode->i_sb, "xattr delete (err %d)", err);
stop_handle:
		FUNC18(handle);
		FUNC20(NULL, inode);
		FUNC33(inode->i_sb);
		FUNC27(ea_inode_array);
		goto no_delete;
	}

	/*
	 * Kill off the orphan record which ext4_truncate created.
	 * AKPM: I think this can be inside the above `if'.
	 * Note that ext4_orphan_del() has to be able to cope with the
	 * deletion of a non-existent orphan - this is because we don't
	 * know if ext4_truncate() actually created an orphan record.
	 * (Well, we could do this if we need to, but heck - it works)
	 */
	FUNC20(handle, inode);
	FUNC0(inode)->i_dtime	= (__u32)FUNC31();

	/*
	 * One subtle ordering requirement: if anything has gone wrong
	 * (transaction abort, IO errors, whatever), then we can still
	 * do these next steps (the fs will already have been marked as
	 * having errors), but we can't free the inode if the mark_dirty
	 * fails.
	 */
	if (FUNC19(handle, inode))
		/* If that failed, just do the required in-core inode clear. */
		FUNC12(inode);
	else
		FUNC14(handle, inode);
	FUNC18(handle);
	FUNC33(inode->i_sb);
	FUNC27(ea_inode_array);
	return;
no_delete:
	FUNC12(inode);	/* We must guarantee clearing of inode... */
}