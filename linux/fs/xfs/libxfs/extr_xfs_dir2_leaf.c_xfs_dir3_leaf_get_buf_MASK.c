#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_dir2_db_t ;
struct TYPE_5__ {int /*<<< orphan*/  geo; struct xfs_trans* trans; struct xfs_inode* dp; } ;
typedef  TYPE_1__ xfs_da_args_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {int /*<<< orphan*/  i_ino; struct xfs_mount* i_mount; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_DIR2_FREE_OFFSET ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF1_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_LEAFN_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF_OFFSET ; 
 int FUNC1 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int,struct xfs_buf**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,struct xfs_trans*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct xfs_buf*) ; 

int
FUNC7(
	xfs_da_args_t		*args,
	xfs_dir2_db_t		bno,
	struct xfs_buf		**bpp,
	uint16_t		magic)
{
	struct xfs_inode	*dp = args->dp;
	struct xfs_trans	*tp = args->trans;
	struct xfs_mount	*mp = dp->i_mount;
	struct xfs_buf		*bp;
	int			error;

	FUNC0(magic == XFS_DIR2_LEAF1_MAGIC || magic == XFS_DIR2_LEAFN_MAGIC);
	FUNC0(bno >= FUNC2(args->geo, XFS_DIR2_LEAF_OFFSET) &&
	       bno < FUNC2(args->geo, XFS_DIR2_FREE_OFFSET));

	error = FUNC1(tp, dp, FUNC3(args->geo, bno),
			       -1, &bp, XFS_DATA_FORK);
	if (error)
		return error;

	FUNC4(mp, tp, bp, dp->i_ino, magic);
	FUNC5(args, bp);
	if (magic == XFS_DIR2_LEAF1_MAGIC)
		FUNC6(args, bp);
	*bpp = bp;
	return 0;
}