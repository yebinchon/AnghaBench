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
typedef  scalar_t__ xfs_off_t ;
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_pdquot; int /*<<< orphan*/  i_gdquot; int /*<<< orphan*/  i_udquot; struct xfs_mount* i_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_IOLOCK_EXCL ; 
 int /*<<< orphan*/  XFS_MMAPLOCK_EXCL ; 
 int /*<<< orphan*/  XFS_QMOPT_RES_REGBLKS ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*) ; 
 int FUNC5 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xfs_inode*,scalar_t__) ; 
 int FUNC10 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_trans*) ; 
 int FUNC12 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct xfs_trans*,struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC15(
	struct xfs_inode	*ip,
	xfs_off_t		offset,
	xfs_off_t		len)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_trans	*tp;
	int			error;
	xfs_fileoff_t		next_fsb = FUNC2(mp, offset + len);
	xfs_fileoff_t		shift_fsb = FUNC2(mp, len);
	uint			resblks = FUNC3(mp, 0);
	bool			done = false;

	FUNC0(FUNC8(ip, XFS_IOLOCK_EXCL));
	FUNC0(FUNC8(ip, XFS_MMAPLOCK_EXCL));

	FUNC4(ip);

	error = FUNC6(ip, offset, len);
	if (error)
		return error;

	error = FUNC9(ip, offset);
	if (error)
		return error;

	while (!error && !done) {
		error = FUNC10(mp, &FUNC1(mp)->tr_write, resblks, 0, 0,
					&tp);
		if (error)
			break;

		FUNC7(ip, XFS_ILOCK_EXCL);
		error = FUNC14(tp, mp, ip->i_udquot,
				ip->i_gdquot, ip->i_pdquot, resblks, 0,
				XFS_QMOPT_RES_REGBLKS);
		if (error)
			goto out_trans_cancel;
		FUNC13(tp, ip, XFS_ILOCK_EXCL);

		error = FUNC5(tp, ip, &next_fsb, shift_fsb,
				&done);
		if (error)
			goto out_trans_cancel;

		error = FUNC12(tp);
	}

	return error;

out_trans_cancel:
	FUNC11(tp);
	return error;
}