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
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_3__ {scalar_t__ di_aformat; } ;
struct xfs_inode {scalar_t__ i_afp; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct TYPE_4__ {int /*<<< orphan*/  tr_attrinval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__* FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_ATTR_FORK ; 
 scalar_t__ XFS_DINODE_FMT_LOCAL ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inode*) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,struct xfs_inode*) ; 
 int FUNC4 (struct xfs_trans**,struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int) ; 
 scalar_t__ FUNC8 (struct xfs_inode*) ; 
 int FUNC9 (struct xfs_trans**,struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*,int) ; 
 int FUNC11 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_trans*) ; 
 int FUNC13 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC15(
	struct xfs_inode	*dp)
{
	struct xfs_trans	*trans;
	struct xfs_mount	*mp;
	int			lock_mode = XFS_ILOCK_SHARED;
	int			error = 0;

	mp = dp->i_mount;
	FUNC0(! FUNC3(mp, dp));

	FUNC7(dp, lock_mode);
	if (!FUNC2(dp))
		goto out_destroy_fork;
	FUNC10(dp, lock_mode);

	lock_mode = 0;

	error = FUNC11(mp, &FUNC1(mp)->tr_attrinval, 0, 0, 0, &trans);
	if (error)
		goto out_destroy_fork;

	lock_mode = XFS_ILOCK_EXCL;
	FUNC7(dp, lock_mode);

	if (!FUNC2(dp))
		goto out_cancel;

	/*
	 * No need to make quota reservations here. We expect to release some
	 * blocks, not allocate, in the common case.
	 */
	FUNC14(trans, dp, 0);

	/*
	 * Invalidate and truncate the attribute fork extents. Make sure the
	 * fork actually has attributes as otherwise the invalidation has no
	 * blocks to read and returns an error. In this case, just do the fork
	 * removal below.
	 */
	if (FUNC8(dp) &&
	    dp->i_d.di_aformat != XFS_DINODE_FMT_LOCAL) {
		error = FUNC4(&trans, dp);
		if (error)
			goto out_cancel;

		error = FUNC9(&trans, dp, XFS_ATTR_FORK, 0);
		if (error)
			goto out_cancel;
	}

	/* Reset the attribute fork - this also destroys the in-core fork */
	FUNC5(dp, trans);

	error = FUNC13(trans);
	FUNC10(dp, lock_mode);
	return error;

out_cancel:
	FUNC12(trans);
out_destroy_fork:
	/* kill the in-core attr fork before we drop the inode lock */
	if (dp->i_afp)
		FUNC6(dp, XFS_ATTR_FORK);
	if (lock_mode)
		FUNC10(dp, lock_mode);
	return error;
}