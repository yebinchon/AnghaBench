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
typedef  scalar_t__ xfs_fileoff_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_mount; int /*<<< orphan*/  i_cowfp; } ;
struct TYPE_2__ {int /*<<< orphan*/  tr_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULLFILEOFF ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  XFS_ILOCK_EXCL ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xfs_inode*,struct xfs_trans**,scalar_t__,scalar_t__,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_trans*) ; 
 int FUNC11 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC13(
	struct xfs_inode	*ip,
	xfs_off_t		offset,
	xfs_off_t		count,
	bool			cancel_real)
{
	struct xfs_trans	*tp;
	xfs_fileoff_t		offset_fsb;
	xfs_fileoff_t		end_fsb;
	int			error;

	FUNC4(ip, offset, count);
	FUNC0(ip->i_cowfp);

	offset_fsb = FUNC3(ip->i_mount, offset);
	if (count == NULLFILEOFF)
		end_fsb = NULLFILEOFF;
	else
		end_fsb = FUNC2(ip->i_mount, offset + count);

	/* Start a rolling transaction to remove the mappings */
	error = FUNC9(ip->i_mount, &FUNC1(ip->i_mount)->tr_write,
			0, 0, 0, &tp);
	if (error)
		goto out;

	FUNC6(ip, XFS_ILOCK_EXCL);
	FUNC12(tp, ip, 0);

	/* Scrape out the old CoW reservations */
	error = FUNC8(ip, &tp, offset_fsb, end_fsb,
			cancel_real);
	if (error)
		goto out_cancel;

	error = FUNC11(tp);

	FUNC7(ip, XFS_ILOCK_EXCL);
	return error;

out_cancel:
	FUNC10(tp);
	FUNC7(ip, XFS_ILOCK_EXCL);
out:
	FUNC5(ip, error, _RET_IP_);
	return error;
}