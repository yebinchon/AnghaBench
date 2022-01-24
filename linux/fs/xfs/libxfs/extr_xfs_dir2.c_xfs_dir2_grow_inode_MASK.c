#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_fsize_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_dir2_db_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct xfs_mount {int dummy; } ;
struct TYPE_3__ {scalar_t__ di_size; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct xfs_da_args {int /*<<< orphan*/  trans; TYPE_2__* geo; struct xfs_inode* dp; } ;
struct TYPE_4__ {int fsbcount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfs_mount*,int) ; 
 int XFS_DIR2_DATA_SPACE ; 
 int XFS_DIR2_SPACE_SIZE ; 
 scalar_t__ FUNC1 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_da_args*,int) ; 
 int FUNC3 (struct xfs_da_args*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC6(
	struct xfs_da_args	*args,
	int			space,	/* v2 dir's space XFS_DIR2_xxx_SPACE */
	xfs_dir2_db_t		*dbp)	/* out: block number added */
{
	struct xfs_inode	*dp = args->dp;
	struct xfs_mount	*mp = dp->i_mount;
	xfs_fileoff_t		bno;	/* directory offset of new block */
	int			count;	/* count of filesystem blocks */
	int			error;

	FUNC2(args, space);

	/*
	 * Set lowest possible block in the space requested.
	 */
	bno = FUNC0(mp, space * XFS_DIR2_SPACE_SIZE);
	count = args->geo->fsbcount;

	error = FUNC3(args, &bno, count);
	if (error)
		return error;

	*dbp = FUNC4(args->geo, (xfs_dablk_t)bno);

	/*
	 * Update file's size if this is the data space and it grew.
	 */
	if (space == XFS_DIR2_DATA_SPACE) {
		xfs_fsize_t	size;		/* directory file (data) size */

		size = FUNC1(mp, bno + count);
		if (size > dp->i_d.di_size) {
			dp->i_d.di_size = size;
			FUNC5(args->trans, dp, XFS_ILOG_CORE);
		}
	}
	return 0;
}