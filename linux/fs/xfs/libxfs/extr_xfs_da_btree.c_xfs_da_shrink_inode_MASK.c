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
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {int dummy; } ;
struct xfs_da_args {int whichfork; TYPE_1__* geo; struct xfs_trans* trans; struct xfs_inode* dp; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int fsbcount; } ;

/* Variables and functions */
 int ENOSPC ; 
 int XFS_DATA_FORK ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct xfs_da_args*,int /*<<< orphan*/ *,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_trans*,struct xfs_buf*) ; 

int
FUNC5(
	struct xfs_da_args	*args,
	xfs_dablk_t		dead_blkno,
	struct xfs_buf		*dead_buf)
{
	struct xfs_inode	*dp;
	int			done, error, w, count;
	struct xfs_trans	*tp;

	FUNC0(args);

	dp = args->dp;
	w = args->whichfork;
	tp = args->trans;
	count = args->geo->fsbcount;
	for (;;) {
		/*
		 * Remove extents.  If we get ENOSPC for a dir we have to move
		 * the last block to the place we want to kill.
		 */
		error = FUNC2(tp, dp, dead_blkno, count,
				    FUNC1(w), 0, &done);
		if (error == -ENOSPC) {
			if (w != XFS_DATA_FORK)
				break;
			error = FUNC3(args, &dead_blkno,
						      &dead_buf);
			if (error)
				break;
		} else {
			break;
		}
	}
	FUNC4(tp, dead_buf);
	return error;
}