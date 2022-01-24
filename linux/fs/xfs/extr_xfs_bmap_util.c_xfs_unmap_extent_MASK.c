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
typedef  int /*<<< orphan*/  xfs_filblks_t ;
typedef  int /*<<< orphan*/  uint ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_pdquot; int /*<<< orphan*/  i_gdquot; int /*<<< orphan*/  i_udquot; struct xfs_mount* i_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 TYPE_1__* FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_QMOPT_RES_REGBLKS ; 
 int FUNC4 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_trans*) ; 
 int FUNC9 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct xfs_trans*,struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(
	struct xfs_inode	*ip,
	xfs_fileoff_t		startoffset_fsb,
	xfs_filblks_t		len_fsb,
	int			*done)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_trans	*tp;
	uint			resblks = FUNC2(mp, 0);
	int			error;

	error = FUNC7(mp, &FUNC1(mp)->tr_write, resblks, 0, 0, &tp);
	if (error) {
		FUNC0(error == -ENOSPC || FUNC3(mp));
		return error;
	}

	FUNC5(ip, XFS_ILOCK_EXCL);
	error = FUNC11(tp, mp, ip->i_udquot, ip->i_gdquot,
			ip->i_pdquot, resblks, 0, XFS_QMOPT_RES_REGBLKS);
	if (error)
		goto out_trans_cancel;

	FUNC10(tp, ip, 0);

	error = FUNC4(tp, ip, startoffset_fsb, len_fsb, 0, 2, done);
	if (error)
		goto out_trans_cancel;

	error = FUNC9(tp);
out_unlock:
	FUNC6(ip, XFS_ILOCK_EXCL);
	return error;

out_trans_cancel:
	FUNC8(tp);
	goto out_unlock;
}