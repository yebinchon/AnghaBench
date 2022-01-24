#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_blkno; } ;
struct ocfs2_dinode {int i_flags; int i_dyn_features; int /*<<< orphan*/  i_orphaned_slot; scalar_t__ i_dtime; int /*<<< orphan*/  i_blkno; } ;
struct inode {int /*<<< orphan*/  i_nlink; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EEXIST ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  OCFS2_HAS_REFCOUNT_FL ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_SKIP_ORPHAN_DIR ; 
 int /*<<< orphan*/  OCFS2_ORPHANED_FL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct inode *inode,
				  struct buffer_head *di_bh,
				  int *wipe)
{
	int status = 0, reason = 0;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_dinode *di;

	*wipe = 0;

	FUNC10((unsigned long long)oi->ip_blkno,
					   inode->i_nlink);

	/* While we were waiting for the cluster lock in
	 * ocfs2_delete_inode, another node might have asked to delete
	 * the inode. Recheck our flags to catch this. */
	if (!FUNC8(inode)) {
		reason = 1;
		goto bail;
	}

	/* Now that we have an up to date inode, we can double check
	 * the link count. */
	if (inode->i_nlink)
		goto bail;

	/* Do some basic inode verification... */
	di = (struct ocfs2_dinode *) di_bh->b_data;
	if (!(di->i_flags & FUNC2(OCFS2_ORPHANED_FL)) &&
	    !(oi->ip_flags & OCFS2_INODE_SKIP_ORPHAN_DIR)) {
		/*
		 * Inodes in the orphan dir must have ORPHANED_FL.  The only
		 * inodes that come back out of the orphan dir are reflink
		 * targets. A reflink target may be moved out of the orphan
		 * dir between the time we scan the directory and the time we
		 * process it. This would lead to HAS_REFCOUNT_FL being set but
		 * ORPHANED_FL not.
		 */
		if (di->i_dyn_features & FUNC1(OCFS2_HAS_REFCOUNT_FL)) {
			reason = 2;
			goto bail;
		}

		/* for lack of a better error? */
		status = -EEXIST;
		FUNC6(ML_ERROR,
		     "Inode %llu (on-disk %llu) not orphaned! "
		     "Disk flags  0x%x, inode flags 0x%x\n",
		     (unsigned long long)oi->ip_blkno,
		     (unsigned long long)FUNC5(di->i_blkno),
		     FUNC4(di->i_flags), oi->ip_flags);
		goto bail;
	}

	/* has someone already deleted us?! baaad... */
	if (di->i_dtime) {
		status = -EEXIST;
		FUNC7(status);
		goto bail;
	}

	/*
	 * This is how ocfs2 determines whether an inode is still live
	 * within the cluster. Every node takes a shared read lock on
	 * the inode open lock in ocfs2_read_locked_inode(). When we
	 * get to ->delete_inode(), each node tries to convert it's
	 * lock to an exclusive. Trylocks are serialized by the inode
	 * meta data lock. If the upconvert succeeds, we know the inode
	 * is no longer live and can be deleted.
	 *
	 * Though we call this with the meta data lock held, the
	 * trylock keeps us from ABBA deadlock.
	 */
	status = FUNC9(inode, 1);
	if (status == -EAGAIN) {
		status = 0;
		reason = 3;
		goto bail;
	}
	if (status < 0) {
		FUNC7(status);
		goto bail;
	}

	*wipe = 1;
	FUNC12(FUNC3(di->i_orphaned_slot));

bail:
	FUNC11(status, reason);
	return status;
}