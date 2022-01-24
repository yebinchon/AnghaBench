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
struct xfs_mount {int m_flags; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_da_args {scalar_t__ trans; int /*<<< orphan*/  op_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_attrrm; } ;

/* Variables and functions */
 int ATTR_KERNOTIME ; 
 int ATTR_ROOT ; 
 int EIO ; 
 TYPE_1__* FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_DA_OP_OKNOENT ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_ICHGTIME_CHG ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int XFS_MOUNT_WSYNC ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_TRANS_RESERVE ; 
 int FUNC4 (struct xfs_da_args*,struct xfs_inode*,unsigned char const*,int) ; 
 int FUNC5 (struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xfs_inode*) ; 
 int FUNC9 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  xs_attr_remove ; 

int
FUNC16(
	struct xfs_inode	*dp,
	const unsigned char	*name,
	int			flags)
{
	struct xfs_mount	*mp = dp->i_mount;
	struct xfs_da_args	args;
	int			error;

	FUNC3(mp, xs_attr_remove);

	if (FUNC2(dp->i_mount))
		return -EIO;

	error = FUNC4(&args, dp, name, flags);
	if (error)
		return error;

	/*
	 * we have no control over the attribute names that userspace passes us
	 * to remove, so we have to allow the name lookup prior to attribute
	 * removal to fail.
	 */
	args.op_flags = XFS_DA_OP_OKNOENT;

	error = FUNC8(dp);
	if (error)
		return error;

	/*
	 * Root fork attributes can use reserved data blocks for this
	 * operation if necessary
	 */
	error = FUNC9(mp, &FUNC0(mp)->tr_attrrm,
			FUNC1(mp), 0,
			(flags & ATTR_ROOT) ? XFS_TRANS_RESERVE : 0,
			&args.trans);
	if (error)
		return error;

	FUNC6(dp, XFS_ILOCK_EXCL);
	/*
	 * No need to make quota reservations here. We expect to release some
	 * blocks not allocate in the common case.
	 */
	FUNC13(args.trans, dp, 0);

	error = FUNC5(&args);
	if (error)
		goto out;

	/*
	 * If this is a synchronous mount, make sure that the
	 * transaction goes to disk before returning to the user.
	 */
	if (mp->m_flags & XFS_MOUNT_WSYNC)
		FUNC15(args.trans);

	if ((flags & ATTR_KERNOTIME) == 0)
		FUNC12(args.trans, dp, XFS_ICHGTIME_CHG);

	/*
	 * Commit the last in the sequence of transactions.
	 */
	FUNC14(args.trans, dp, XFS_ILOG_CORE);
	error = FUNC11(args.trans);
	FUNC7(dp, XFS_ILOCK_EXCL);

	return error;

out:
	if (args.trans)
		FUNC10(args.trans);
	FUNC7(dp, XFS_ILOCK_EXCL);
	return error;
}