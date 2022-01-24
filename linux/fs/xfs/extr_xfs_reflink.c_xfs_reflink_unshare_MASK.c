#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_off_t ;
typedef  int /*<<< orphan*/  xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_filblks_t ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct xfs_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (struct xfs_inode*) ; 

int
FUNC13(
	struct xfs_inode	*ip,
	xfs_off_t		offset,
	xfs_off_t		len)
{
	struct xfs_mount	*mp = ip->i_mount;
	xfs_fileoff_t		fbno;
	xfs_filblks_t		end;
	xfs_off_t		isize;
	int			error;

	if (!FUNC9(ip))
		return 0;

	FUNC6(ip, offset, len);

	FUNC5(FUNC0(ip));

	/* Try to CoW the selected ranges */
	FUNC8(ip, XFS_ILOCK_EXCL);
	fbno = FUNC2(mp, offset);
	isize = FUNC4(FUNC0(ip));
	end = FUNC1(mp, offset + len);
	error = FUNC11(ip, fbno, end, isize);
	if (error)
		goto out_unlock;
	FUNC10(ip, XFS_ILOCK_EXCL);

	/* Wait for the IO to finish */
	error = FUNC3(FUNC0(ip)->i_mapping);
	if (error)
		goto out;

	/* Turn off the reflink flag if possible. */
	error = FUNC12(ip);
	if (error)
		goto out;

	return 0;

out_unlock:
	FUNC10(ip, XFS_ILOCK_EXCL);
out:
	FUNC7(ip, error, _RET_IP_);
	return error;
}