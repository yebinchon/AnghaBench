#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_22__ ;
typedef  struct TYPE_25__   TYPE_20__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_24__ {int m_flags; } ;
typedef  TYPE_1__ xfs_mount_t ;
struct TYPE_27__ {int /*<<< orphan*/  i_ino; TYPE_1__* i_mount; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  scalar_t__ uint ;
struct xfs_name {int dummy; } ;
struct TYPE_26__ {int /*<<< orphan*/  tr_remove; } ;
struct TYPE_25__ {int i_nlink; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOENT ; 
 int ENOSPC ; 
 int ENOTEMPTY ; 
 TYPE_22__* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_20__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int XFS_ICHGTIME_CHG ; 
 int XFS_ICHGTIME_MOD ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int XFS_MOUNT_DIRSYNC ; 
 int XFS_MOUNT_WSYNC ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct xfs_name*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,struct xfs_name*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int
FUNC21(
	xfs_inode_t             *dp,
	struct xfs_name		*name,
	xfs_inode_t		*ip)
{
	xfs_mount_t		*mp = dp->i_mount;
	xfs_trans_t             *tp = NULL;
	int			is_dir = FUNC2(FUNC3(ip)->i_mode);
	int                     error = 0;
	uint			resblks;

	FUNC6(dp, name);

	if (FUNC4(mp))
		return -EIO;

	error = FUNC13(dp);
	if (error)
		goto std_return;

	error = FUNC13(ip);
	if (error)
		goto std_return;

	/*
	 * We try to get the real space reservation first,
	 * allowing for directory btree deletion(s) implying
	 * possible bmap insert(s).  If we can't get the space
	 * reservation then we use 0 instead, and avoid the bmap
	 * btree insert(s) in the directory code by, if the bmap
	 * insert tries to happen, instead trimming the LAST
	 * block from the directory.
	 */
	resblks = FUNC5(mp);
	error = FUNC14(mp, &FUNC1(mp)->tr_remove, resblks, 0, 0, &tp);
	if (error == -ENOSPC) {
		resblks = 0;
		error = FUNC14(mp, &FUNC1(mp)->tr_remove, 0, 0, 0,
				&tp);
	}
	if (error) {
		FUNC0(error != -ENOSPC);
		goto std_return;
	}

	FUNC12(dp, XFS_ILOCK_EXCL, ip, XFS_ILOCK_EXCL);

	FUNC18(tp, dp, XFS_ILOCK_EXCL);
	FUNC18(tp, ip, XFS_ILOCK_EXCL);

	/*
	 * If we're removing a directory perform some additional validation.
	 */
	if (is_dir) {
		FUNC0(FUNC3(ip)->i_nlink >= 2);
		if (FUNC3(ip)->i_nlink != 2) {
			error = -ENOTEMPTY;
			goto out_trans_cancel;
		}
		if (!FUNC7(ip)) {
			error = -ENOTEMPTY;
			goto out_trans_cancel;
		}

		/* Drop the link from ip's "..".  */
		error = FUNC9(tp, dp);
		if (error)
			goto out_trans_cancel;

		/* Drop the "." link from ip to self.  */
		error = FUNC9(tp, ip);
		if (error)
			goto out_trans_cancel;
	} else {
		/*
		 * When removing a non-directory we need to log the parent
		 * inode here.  For a directory this is done implicitly
		 * by the xfs_droplink call for the ".." entry.
		 */
		FUNC19(tp, dp, XFS_ILOG_CORE);
	}
	FUNC17(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

	/* Drop the link from dp to ip. */
	error = FUNC9(tp, ip);
	if (error)
		goto out_trans_cancel;

	error = FUNC8(tp, dp, name, ip->i_ino, resblks);
	if (error) {
		FUNC0(error != -ENOENT);
		goto out_trans_cancel;
	}

	/*
	 * If this is a synchronous mount, make sure that the
	 * remove transaction goes to disk before returning to
	 * the user.
	 */
	if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC))
		FUNC20(tp);

	error = FUNC16(tp);
	if (error)
		goto std_return;

	if (is_dir && FUNC11(ip))
		FUNC10(ip);

	return 0;

 out_trans_cancel:
	FUNC15(tp);
 std_return:
	return error;
}