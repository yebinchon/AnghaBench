#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_8__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  scalar_t__ xfs_fileoff_t ;
typedef  int /*<<< orphan*/  xfs_dir2_free_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_9__ {int /*<<< orphan*/  geo; int /*<<< orphan*/ * trans; TYPE_2__* dp; } ;
typedef  TYPE_3__ xfs_da_args_t ;
struct xfs_dir3_icfree_hdr {scalar_t__ nused; } ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_dir3_icfree_hdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,struct xfs_buf**) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct xfs_buf*) ; 

int						/* error */
FUNC6(
	xfs_da_args_t		*args,		/* operation arguments */
	xfs_fileoff_t		fo,		/* free block number */
	int			*rvalp)		/* out: did something */
{
	struct xfs_buf		*bp;		/* freespace buffer */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	xfs_dir2_free_t		*free;		/* freespace structure */
	xfs_trans_t		*tp;		/* transaction pointer */
	struct xfs_dir3_icfree_hdr freehdr;

	dp = args->dp;
	tp = args->trans;

	*rvalp = 0;

	/*
	 * Read the freespace block.
	 */
	error = FUNC3(tp, dp, fo, &bp);
	if (error)
		return error;
	/*
	 * There can be holes in freespace.  If fo is a hole, there's
	 * nothing to do.
	 */
	if (!bp)
		return 0;
	free = bp->b_addr;
	dp->d_ops->free_hdr_from_disk(&freehdr, free);

	/*
	 * If there are used entries, there's nothing to do.
	 */
	if (freehdr.nused > 0) {
		FUNC5(tp, bp);
		return 0;
	}
	/*
	 * Blow the block away.
	 */
	error = FUNC4(args,
			FUNC2(args->geo, (xfs_dablk_t)fo), bp);
	if (error) {
		/*
		 * Can't fail with ENOSPC since that only happens with no
		 * space reservation, when breaking up an extent into two
		 * pieces.  This is the last block of an extent.
		 */
		FUNC0(error != -ENOSPC);
		FUNC5(tp, bp);
		return error;
	}
	/*
	 * Return that we succeeded.
	 */
	*rvalp = 1;
	return 0;
}