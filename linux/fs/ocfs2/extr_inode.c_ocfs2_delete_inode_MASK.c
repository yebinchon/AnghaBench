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
struct ocfs2_dinode {int i_flags; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int /*<<< orphan*/  ip_flags; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EDEADLK ; 
 int ENOENT ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_DIO_ORPHANED_FL ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_DELETED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,struct buffer_head*,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,unsigned long long,scalar_t__) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static void FUNC20(struct inode *inode)
{
	int wipe, status;
	sigset_t oldset;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di = NULL;

	FUNC18(inode->i_ino,
				 (unsigned long long)FUNC0(inode)->ip_blkno,
				 FUNC5(inode));

	/* When we fail in read_inode() we mark inode as bad. The second test
	 * catches the case when inode allocation fails before allocating
	 * a block for inode. */
	if (FUNC5(inode) || !FUNC0(inode)->ip_blkno)
		goto bail;

	if (!FUNC10(inode)) {
		/* It's probably not necessary to truncate_inode_pages
		 * here but we do it for safety anyway (it will most
		 * likely be a no-op anyway) */
		FUNC9(inode, 0);
		goto bail;
	}

	FUNC4(inode);

	/* We want to block signals in delete_inode as the lock and
	 * messaging paths may return us -ERESTARTSYS. Which would
	 * cause us to exit early, resulting in inodes being orphaned
	 * forever. */
	FUNC8(&oldset);

	/*
	 * Synchronize us against ocfs2_get_dentry. We take this in
	 * shared mode so that all nodes can still concurrently
	 * process deletes.
	 */
	status = FUNC13(FUNC1(inode->i_sb), 0);
	if (status < 0) {
		FUNC6(ML_ERROR, "getting nfs sync lock(PR) failed %d\n", status);
		FUNC9(inode, 0);
		goto bail_unblock;
	}
	/* Lock down the inode. This gives us an up to date view of
	 * it's metadata (for verification), and allows us to
	 * serialize delete_inode on multiple nodes.
	 *
	 * Even though we might be doing a truncate, we don't take the
	 * allocation lock here as it won't be needed - nobody will
	 * have the file open.
	 */
	status = FUNC11(inode, &di_bh, 1);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC7(status);
		FUNC9(inode, 0);
		goto bail_unlock_nfs_sync;
	}

	di = (struct ocfs2_dinode *)di_bh->b_data;
	/* Skip inode deletion and wait for dio orphan entry recovered
	 * first */
	if (FUNC19(di->i_flags & FUNC3(OCFS2_DIO_ORPHANED_FL))) {
		FUNC9(inode, 0);
		goto bail_unlock_inode;
	}

	/* Query the cluster. This will be the final decision made
	 * before we go ahead and wipe the inode. */
	status = FUNC15(inode, di_bh, &wipe);
	if (!wipe || status < 0) {
		/* Error and remote inode busy both mean we won't be
		 * removing the inode, so they take almost the same
		 * path. */
		if (status < 0)
			FUNC7(status);

		/* Someone in the cluster has disallowed a wipe of
		 * this inode, or it was never completely
		 * orphaned. Write out the pages and exit now. */
		FUNC9(inode, 1);
		goto bail_unlock_inode;
	}

	FUNC9(inode, 0);

	status = FUNC17(inode, di_bh);
	if (status < 0) {
		if (status != -EDEADLK)
			FUNC7(status);
		goto bail_unlock_inode;
	}

	/*
	 * Mark the inode as successfully deleted.
	 *
	 * This is important for ocfs2_clear_inode() as it will check
	 * this flag and skip any checkpointing work
	 *
	 * ocfs2_stuff_meta_lvb() also uses this flag to invalidate
	 * the LVB for other nodes.
	 */
	FUNC0(inode)->ip_flags |= OCFS2_INODE_DELETED;

bail_unlock_inode:
	FUNC12(inode, 1);
	FUNC2(di_bh);

bail_unlock_nfs_sync:
	FUNC14(FUNC1(inode->i_sb), 0);

bail_unblock:
	FUNC16(&oldset);
bail:
	return;
}