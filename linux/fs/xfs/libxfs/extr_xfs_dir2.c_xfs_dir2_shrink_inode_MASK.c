#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_dir2_db_t ;
typedef  scalar_t__ xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_5__ {scalar_t__ di_size; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct xfs_da_args {TYPE_2__* geo; struct xfs_trans* trans; struct xfs_inode* dp; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_6__ {scalar_t__ datablk; int /*<<< orphan*/  fsbcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF_OFFSET ; 
 scalar_t__ FUNC1 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  XFS_ILOG_CORE ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_da_args*,scalar_t__) ; 
 int FUNC3 (struct xfs_trans*,struct xfs_inode*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfs_trans*,struct xfs_inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_trans*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ) ; 

int
FUNC10(
	struct xfs_da_args	*args,
	xfs_dir2_db_t		db,
	struct xfs_buf		*bp)
{
	xfs_fileoff_t		bno;		/* directory file offset */
	xfs_dablk_t		da;		/* directory file offset */
	int			done;		/* bunmap is finished */
	struct xfs_inode	*dp;
	int			error;
	struct xfs_mount	*mp;
	struct xfs_trans	*tp;

	FUNC2(args, db);

	dp = args->dp;
	mp = dp->i_mount;
	tp = args->trans;
	da = FUNC7(args->geo, db);

	/* Unmap the fsblock(s). */
	error = FUNC4(tp, dp, da, args->geo->fsbcount, 0, 0, &done);
	if (error) {
		/*
		 * ENOSPC actually can happen if we're in a removename with no
		 * space reservation, and the resulting block removal would
		 * cause a bmap btree split or conversion from extents to btree.
		 * This can only happen for un-fragmented directory blocks,
		 * since you need to be punching out the middle of an extent.
		 * In this case we need to leave the block in the file, and not
		 * binval it.  So the block has to be in a consistent empty
		 * state and appropriately logged.  We don't free up the buffer,
		 * the caller can tell it hasn't happened since it got an error
		 * back.
		 */
		return error;
	}
	FUNC0(done);
	/*
	 * Invalidate the buffer from the transaction.
	 */
	FUNC8(tp, bp);
	/*
	 * If it's not a data block, we're done.
	 */
	if (db >= FUNC5(args->geo, XFS_DIR2_LEAF_OFFSET))
		return 0;
	/*
	 * If the block isn't the last one in the directory, we're done.
	 */
	if (dp->i_d.di_size > FUNC6(args->geo, db + 1, 0))
		return 0;
	bno = da;
	if ((error = FUNC3(tp, dp, &bno, XFS_DATA_FORK))) {
		/*
		 * This can't really happen unless there's kernel corruption.
		 */
		return error;
	}
	if (db == args->geo->datablk)
		FUNC0(bno == 0);
	else
		FUNC0(bno > 0);
	/*
	 * Set the size to the new last block.
	 */
	dp->i_d.di_size = FUNC1(mp, bno);
	FUNC9(tp, dp, XFS_ILOG_CORE);
	return 0;
}