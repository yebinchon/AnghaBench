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
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  tr_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  NULLFSBLOCK ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_IOLOCK_EXCL ; 
 int /*<<< orphan*/  XFS_MMAPLOCK_EXCL ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_inode*) ; 
 int FUNC4 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_trans*) ; 
 int FUNC12 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC14(
	struct xfs_inode	*ip,
	loff_t			offset,
	loff_t			len)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_trans	*tp;
	int			error;
	xfs_fileoff_t		stop_fsb = FUNC2(mp, offset);
	xfs_fileoff_t		next_fsb = NULLFSBLOCK;
	xfs_fileoff_t		shift_fsb = FUNC2(mp, len);
	bool			done = false;

	FUNC0(FUNC8(ip, XFS_IOLOCK_EXCL));
	FUNC0(FUNC8(ip, XFS_MMAPLOCK_EXCL));

	FUNC3(ip);

	error = FUNC4(ip, stop_fsb, shift_fsb);
	if (error)
		return error;

	error = FUNC9(ip, offset);
	if (error)
		return error;

	/*
	 * The extent shifting code works on extent granularity. So, if stop_fsb
	 * is not the starting block of extent, we need to split the extent at
	 * stop_fsb.
	 */
	error = FUNC6(ip, stop_fsb);
	if (error)
		return error;

	while (!error && !done) {
		error = FUNC10(mp, &FUNC1(mp)->tr_write, 0, 0, 0,
					&tp);
		if (error)
			break;

		FUNC7(ip, XFS_ILOCK_EXCL);
		FUNC13(tp, ip, XFS_ILOCK_EXCL);
		error = FUNC5(tp, ip, &next_fsb, shift_fsb,
				&done, stop_fsb);
		if (error)
			goto out_trans_cancel;

		error = FUNC12(tp);
	}

	return error;

out_trans_cancel:
	FUNC11(tp);
	return error;
}