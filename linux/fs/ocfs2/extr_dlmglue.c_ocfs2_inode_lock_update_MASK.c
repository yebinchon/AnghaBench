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
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_blkno; int /*<<< orphan*/  ip_lock; struct ocfs2_lock_res ip_inode_lockres; } ;
struct ocfs2_dinode {int i_generation; int i_flags; int /*<<< orphan*/  i_dtime; } ;
struct inode {scalar_t__ i_generation; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 struct ocfs2_super* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCFS2_VALID_FL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct inode*,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct ocfs2_super*) ; 
 int FUNC14 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC18 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(struct inode *inode,
				  struct buffer_head **bh)
{
	int status = 0;
	struct ocfs2_inode_info *oi = FUNC1(inode);
	struct ocfs2_lock_res *lockres = &oi->ip_inode_lockres;
	struct ocfs2_dinode *fe;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);

	if (FUNC13(osb))
		goto bail;

	FUNC19(&oi->ip_lock);
	if (oi->ip_flags & OCFS2_INODE_DELETED) {
		FUNC6(0, "Orphaned inode %llu was deleted while we "
		     "were waiting on a lock. ip_flags = 0x%x\n",
		     (unsigned long long)oi->ip_blkno, oi->ip_flags);
		FUNC20(&oi->ip_lock);
		status = -ENOENT;
		goto bail;
	}
	FUNC20(&oi->ip_lock);

	if (!FUNC17(lockres))
		goto bail;

	/* This will discard any caching information we might have had
	 * for the inode metadata. */
	FUNC12(FUNC0(inode));

	FUNC10(inode, 0);

	if (FUNC11(inode, lockres)) {
		FUNC6(0, "Trusting LVB on inode %llu\n",
		     (unsigned long long)oi->ip_blkno);
		FUNC16(inode);
	} else {
		/* Boo, we have to go to disk. */
		/* read bh, cast, ocfs2_refresh_inode */
		status = FUNC14(inode, bh);
		if (status < 0) {
			FUNC8(status);
			goto bail_refresh;
		}
		fe = (struct ocfs2_dinode *) (*bh)->b_data;

		/* This is a good chance to make sure we're not
		 * locking an invalid object.  ocfs2_read_inode_block()
		 * already checked that the inode block is sane.
		 *
		 * We bug on a stale inode here because we checked
		 * above whether it was wiped from disk. The wiping
		 * node provides a guarantee that we receive that
		 * message and can mark the inode before dropping any
		 * locks associated with it. */
		FUNC7(inode->i_generation !=
				FUNC4(fe->i_generation),
				"Invalid dinode %llu disk generation: %u "
				"inode->i_generation: %u\n",
				(unsigned long long)oi->ip_blkno,
				FUNC4(fe->i_generation),
				inode->i_generation);
		FUNC7(FUNC5(fe->i_dtime) ||
				!(fe->i_flags & FUNC3(OCFS2_VALID_FL)),
				"Stale dinode %llu dtime: %llu flags: 0x%x\n",
				(unsigned long long)oi->ip_blkno,
				(unsigned long long)FUNC5(fe->i_dtime),
				FUNC4(fe->i_flags));

		FUNC15(inode, fe);
		FUNC18(lockres);
	}

	status = 0;
bail_refresh:
	FUNC9(lockres, status);
bail:
	return status;
}