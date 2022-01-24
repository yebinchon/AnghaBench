#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_21__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
typedef  int /*<<< orphan*/  xfs_dir2_sf_hdr_t ;
struct TYPE_22__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_hdr_t ;
struct TYPE_23__ {int /*<<< orphan*/  namelen; } ;
typedef  TYPE_4__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct TYPE_24__ {int /*<<< orphan*/  stale; } ;
typedef  TYPE_5__ xfs_dir2_block_tail_t ;
struct TYPE_25__ {int /*<<< orphan*/  geo; int /*<<< orphan*/ * trans; TYPE_2__* dp; } ;
typedef  TYPE_6__ xfs_da_args_t ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* data_entsize ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_DIR2_NULL_DATAPTR ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 TYPE_3__* FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct xfs_buf*) ; 
 int FUNC9 (TYPE_6__*,struct xfs_buf**,int*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_6__*,struct xfs_buf*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,struct xfs_buf*) ; 

int						/* error */
FUNC18(
	xfs_da_args_t		*args)		/* directory operation args */
{
	xfs_dir2_data_hdr_t	*hdr;		/* block header */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf pointer */
	struct xfs_buf		*bp;		/* block buffer */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* incore inode */
	int			ent;		/* block leaf entry index */
	int			error;		/* error return value */
	int			needlog;	/* need to log block header */
	int			needscan;	/* need to fixup bestfree */
	xfs_dir2_sf_hdr_t	sfh;		/* shortform header */
	int			size;		/* shortform size */
	xfs_trans_t		*tp;		/* transaction pointer */

	FUNC5(args);

	/*
	 * Look up the entry in the block.  Gets the buffer and entry index.
	 * It will always be there, the vnodeops level does a lookup first.
	 */
	if ((error = FUNC9(args, &bp, &ent))) {
		return error;
	}
	dp = args->dp;
	tp = args->trans;
	hdr = bp->b_addr;
	btp = FUNC11(args->geo, hdr);
	blp = FUNC6(btp);
	/*
	 * Point to the data entry using the leaf entry.
	 */
	dep = (xfs_dir2_data_entry_t *)((char *)hdr +
			FUNC16(args->geo,
						FUNC2(blp[ent].address)));
	/*
	 * Mark the data entry's space free.
	 */
	needlog = needscan = 0;
	FUNC15(args, bp,
		(xfs_dir2_data_aoff_t)((char *)dep - (char *)hdr),
		dp->d_ops->data_entsize(dep->namelen), &needlog, &needscan);
	/*
	 * Fix up the block tail.
	 */
	FUNC1(&btp->stale, 1);
	FUNC8(tp, bp);
	/*
	 * Remove the leaf entry by marking it stale.
	 */
	blp[ent].address = FUNC3(XFS_DIR2_NULL_DATAPTR);
	FUNC7(tp, bp, ent, ent);
	/*
	 * Fix up bestfree, log the header if necessary.
	 */
	if (needscan)
		FUNC13(dp, hdr, &needlog);
	if (needlog)
		FUNC14(args, bp);
	FUNC17(dp, bp);
	/*
	 * See if the size as a shortform is good enough.
	 */
	size = FUNC10(dp, hdr, &sfh);
	if (size > FUNC0(dp))
		return 0;

	/*
	 * If it works, do the conversion.
	 */
	return FUNC12(args, bp, size, &sfh);
}