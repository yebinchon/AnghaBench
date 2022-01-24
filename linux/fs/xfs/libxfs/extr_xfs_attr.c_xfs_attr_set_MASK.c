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
typedef  int /*<<< orphan*/  xfs_attr_sf_hdr_t ;
struct xfs_trans_res {int /*<<< orphan*/  tr_logflags; int /*<<< orphan*/  tr_logcount; scalar_t__ tr_logres; } ;
struct xfs_mount {int m_flags; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct xfs_da_args {unsigned char* value; int valuelen; int op_flags; int total; scalar_t__ trans; int /*<<< orphan*/  namelen; } ;
struct TYPE_5__ {int tr_logres; } ;
struct TYPE_4__ {scalar_t__ tr_logres; } ;
struct TYPE_6__ {TYPE_2__ tr_attrsetrt; TYPE_1__ tr_attrsetm; } ;

/* Variables and functions */
 int ATTR_KERNOTIME ; 
 int ATTR_ROOT ; 
 int EIO ; 
 TYPE_3__* FUNC0 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_ATTRSET_LOG_COUNT ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int XFS_DA_OP_ADDNAME ; 
 int XFS_DA_OP_OKNOENT ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_ICHGTIME_CHG ; 
 scalar_t__ FUNC3 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int XFS_MOUNT_WSYNC ; 
 int XFS_QMOPT_FORCE_RES ; 
 int XFS_QMOPT_RES_REGBLKS ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_TRANS_PERM_LOG_RES ; 
 int /*<<< orphan*/  XFS_TRANS_RESERVE ; 
 int FUNC5 (struct xfs_da_args*,struct xfs_inode*,unsigned char const*,int) ; 
 int FUNC6 (struct xfs_da_args*,int*) ; 
 int FUNC7 (struct xfs_da_args*) ; 
 int FUNC8 (struct xfs_inode*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct xfs_inode*) ; 
 int FUNC12 (struct xfs_mount*,struct xfs_trans_res*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC18 (scalar_t__,struct xfs_inode*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  xs_attr_set ; 

int
FUNC20(
	struct xfs_inode	*dp,
	const unsigned char	*name,
	unsigned char		*value,
	int			valuelen,
	int			flags)
{
	struct xfs_mount	*mp = dp->i_mount;
	struct xfs_da_args	args;
	struct xfs_trans_res	tres;
	int			rsvd = (flags & ATTR_ROOT) != 0;
	int			error, local;

	FUNC4(mp, xs_attr_set);

	if (FUNC2(dp->i_mount))
		return -EIO;

	error = FUNC5(&args, dp, name, flags);
	if (error)
		return error;

	args.value = value;
	args.valuelen = valuelen;
	args.op_flags = XFS_DA_OP_ADDNAME | XFS_DA_OP_OKNOENT;
	args.total = FUNC6(&args, &local);

	error = FUNC11(dp);
	if (error)
		return error;

	/*
	 * If the inode doesn't have an attribute fork, add one.
	 * (inode must not be locked when we call this routine)
	 */
	if (FUNC3(dp) == 0) {
		int sf_size = sizeof(xfs_attr_sf_hdr_t) +
			FUNC1(args.namelen, valuelen);

		error = FUNC8(dp, sf_size, rsvd);
		if (error)
			return error;
	}

	tres.tr_logres = FUNC0(mp)->tr_attrsetm.tr_logres +
			 FUNC0(mp)->tr_attrsetrt.tr_logres * args.total;
	tres.tr_logcount = XFS_ATTRSET_LOG_COUNT;
	tres.tr_logflags = XFS_TRANS_PERM_LOG_RES;

	/*
	 * Root fork attributes can use reserved data blocks for this
	 * operation if necessary
	 */
	error = FUNC12(mp, &tres, args.total, 0,
			rsvd ? XFS_TRANS_RESERVE : 0, &args.trans);
	if (error)
		return error;

	FUNC9(dp, XFS_ILOCK_EXCL);
	error = FUNC18(args.trans, dp, args.total, 0,
				rsvd ? XFS_QMOPT_RES_REGBLKS | XFS_QMOPT_FORCE_RES :
				       XFS_QMOPT_RES_REGBLKS);
	if (error)
		goto out_trans_cancel;

	FUNC16(args.trans, dp, 0);
	error = FUNC7(&args);
	if (error)
		goto out_trans_cancel;
	if (!args.trans) {
		/* shortform attribute has already been committed */
		goto out_unlock;
	}

	/*
	 * If this is a synchronous mount, make sure that the
	 * transaction goes to disk before returning to the user.
	 */
	if (mp->m_flags & XFS_MOUNT_WSYNC)
		FUNC19(args.trans);

	if ((flags & ATTR_KERNOTIME) == 0)
		FUNC15(args.trans, dp, XFS_ICHGTIME_CHG);

	/*
	 * Commit the last in the sequence of transactions.
	 */
	FUNC17(args.trans, dp, XFS_ILOG_CORE);
	error = FUNC14(args.trans);
out_unlock:
	FUNC10(dp, XFS_ILOCK_EXCL);
	return error;

out_trans_cancel:
	if (args.trans)
		FUNC13(args.trans);
	goto out_unlock;
}