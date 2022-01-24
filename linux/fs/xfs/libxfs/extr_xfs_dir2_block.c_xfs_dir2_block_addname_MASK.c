#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_7__ ;
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_2__ ;
typedef  struct TYPE_35__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_36__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_37__ {scalar_t__ address; scalar_t__ hashval; } ;
typedef  TYPE_3__ xfs_dir2_leaf_entry_t ;
struct TYPE_38__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_4__ xfs_dir2_data_unused_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_hdr_t ;
struct TYPE_39__ {int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; int /*<<< orphan*/  inumber; } ;
typedef  TYPE_5__ xfs_dir2_data_entry_t ;
typedef  scalar_t__ xfs_dir2_data_aoff_t ;
struct TYPE_40__ {scalar_t__ stale; scalar_t__ count; } ;
typedef  TYPE_6__ xfs_dir2_block_tail_t ;
typedef  int xfs_dahash_t ;
struct TYPE_41__ {int op_flags; scalar_t__ total; int hashval; int /*<<< orphan*/  filetype; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  inumber; int /*<<< orphan*/  geo; int /*<<< orphan*/ * trans; TYPE_2__* dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_35__ {int (* data_entsize ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* data_entry_tag_p ) (TYPE_5__*) ;int /*<<< orphan*/  (* data_put_ftype ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int XFS_DA_OP_JUSTCHECK ; 
 int XFS_DIR2_NULL_DATAPTR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_3__*,int) ; 
 int FUNC10 (int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,struct xfs_buf*,int /*<<< orphan*/ *,TYPE_6__*,TYPE_3__*,int*,int*,int*) ; 
 TYPE_3__* FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_6__*,TYPE_3__*,int /*<<< orphan*/ **,TYPE_4__**,TYPE_4__**,int*,int) ; 
 TYPE_6__* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_7__*,struct xfs_buf*) ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,struct xfs_buf*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_7__*,struct xfs_buf*) ; 
 int FUNC26 (TYPE_7__*,struct xfs_buf*,TYPE_4__*,scalar_t__,scalar_t__,int*,int*) ; 
 int FUNC27 (TYPE_7__*) ; 
 int FUNC28 (int /*<<< orphan*/ *,TYPE_2__*,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,struct xfs_buf*) ; 

int						/* error */
FUNC31(
	xfs_da_args_t		*args)		/* directory op arguments */
{
	xfs_dir2_data_hdr_t	*hdr;		/* block header */
	xfs_dir2_leaf_entry_t	*blp;		/* block leaf entries */
	struct xfs_buf		*bp;		/* buffer for block */
	xfs_dir2_block_tail_t	*btp;		/* block tail */
	int			compact;	/* need to compact leaf ents */
	xfs_dir2_data_entry_t	*dep;		/* block data entry */
	xfs_inode_t		*dp;		/* directory inode */
	xfs_dir2_data_unused_t	*dup;		/* block unused entry */
	int			error;		/* error return value */
	xfs_dir2_data_unused_t	*enddup=NULL;	/* unused at end of data */
	xfs_dahash_t		hash;		/* hash value of found entry */
	int			high;		/* high index for binary srch */
	int			highstale;	/* high stale index */
	int			lfloghigh=0;	/* last final leaf to log */
	int			lfloglow=0;	/* first final leaf to log */
	int			len;		/* length of the new entry */
	int			low;		/* low index for binary srch */
	int			lowstale;	/* low stale index */
	int			mid=0;		/* midpoint for binary srch */
	int			needlog;	/* need to log header */
	int			needscan;	/* need to rescan freespace */
	__be16			*tagp;		/* pointer to tag value */
	xfs_trans_t		*tp;		/* transaction structure */

	FUNC14(args);

	dp = args->dp;
	tp = args->trans;

	/* Read the (one and only) directory block into bp. */
	error = FUNC28(tp, dp, &bp);
	if (error)
		return error;

	len = dp->d_ops->data_entsize(args->namelen);

	/*
	 * Set up pointers to parts of the block.
	 */
	hdr = bp->b_addr;
	btp = FUNC20(args->geo, hdr);
	blp = FUNC16(btp);

	/*
	 * Find out if we can reuse stale entries or whether we need extra
	 * space for entry and new leaf.
	 */
	FUNC19(dp, hdr, btp, blp, &tagp, &dup,
				  &enddup, &compact, len);

	/*
	 * Done everything we need for a space check now.
	 */
	if (args->op_flags & XFS_DA_OP_JUSTCHECK) {
		FUNC30(tp, bp);
		if (!dup)
			return -ENOSPC;
		return 0;
	}

	/*
	 * If we don't have space for the new entry & leaf ...
	 */
	if (!dup) {
		/* Don't have a space reservation: return no-space.  */
		if (args->total == 0)
			return -ENOSPC;
		/*
		 * Convert to the next larger format.
		 * Then add the new entry in that format.
		 */
		error = FUNC21(args, bp);
		if (error)
			return error;
		return FUNC27(args);
	}

	needlog = needscan = 0;

	/*
	 * If need to compact the leaf entries, do it now.
	 */
	if (compact) {
		FUNC15(args, bp, hdr, btp, blp, &needlog,
				      &lfloghigh, &lfloglow);
		/* recalculate blp post-compaction */
		blp = FUNC16(btp);
	} else if (btp->stale) {
		/*
		 * Set leaf logging boundaries to impossible state.
		 * For the no-stale case they're set explicitly.
		 */
		lfloglow = FUNC3(btp->count);
		lfloghigh = -1;
	}

	/*
	 * Find the slot that's first lower than our hash value, -1 if none.
	 */
	for (low = 0, high = FUNC3(btp->count) - 1; low <= high; ) {
		mid = (low + high) >> 1;
		if ((hash = FUNC3(blp[mid].hashval)) == args->hashval)
			break;
		if (hash < args->hashval)
			low = mid + 1;
		else
			high = mid - 1;
	}
	while (mid >= 0 && FUNC3(blp[mid].hashval) >= args->hashval) {
		mid--;
	}
	/*
	 * No stale entries, will use enddup space to hold new leaf.
	 */
	if (!btp->stale) {
		xfs_dir2_data_aoff_t	aoff;

		/*
		 * Mark the space needed for the new leaf entry, now in use.
		 */
		aoff = (xfs_dir2_data_aoff_t)((char *)enddup - (char *)hdr +
				FUNC1(enddup->length) - sizeof(*blp));
		error = FUNC26(args, bp, enddup, aoff,
				(xfs_dir2_data_aoff_t)sizeof(*blp), &needlog,
				&needscan);
		if (error)
			return error;

		/*
		 * Update the tail (entry count).
		 */
		FUNC2(&btp->count, 1);
		/*
		 * If we now need to rebuild the bestfree map, do so.
		 * This needs to happen before the next call to use_free.
		 */
		if (needscan) {
			FUNC23(dp, hdr, &needlog);
			needscan = 0;
		}
		/*
		 * Adjust pointer to the first leaf entry, we're about to move
		 * the table up one to open up space for the new leaf entry.
		 * Then adjust our index to match.
		 */
		blp--;
		mid++;
		if (mid)
			FUNC9(blp, &blp[1], mid * sizeof(*blp));
		lfloglow = 0;
		lfloghigh = mid;
	}
	/*
	 * Use a stale leaf for our new entry.
	 */
	else {
		for (lowstale = mid;
		     lowstale >= 0 &&
			blp[lowstale].address !=
			FUNC5(XFS_DIR2_NULL_DATAPTR);
		     lowstale--)
			continue;
		for (highstale = mid + 1;
		     highstale < FUNC3(btp->count) &&
			blp[highstale].address !=
			FUNC5(XFS_DIR2_NULL_DATAPTR) &&
			(lowstale < 0 || mid - lowstale > highstale - mid);
		     highstale++)
			continue;
		/*
		 * Move entries toward the low-numbered stale entry.
		 */
		if (lowstale >= 0 &&
		    (highstale == FUNC3(btp->count) ||
		     mid - lowstale <= highstale - mid)) {
			if (mid - lowstale)
				FUNC9(&blp[lowstale], &blp[lowstale + 1],
					(mid - lowstale) * sizeof(*blp));
			lfloglow = FUNC10(lowstale, lfloglow);
			lfloghigh = FUNC7(mid, lfloghigh);
		}
		/*
		 * Move entries toward the high-numbered stale entry.
		 */
		else {
			FUNC0(highstale < FUNC3(btp->count));
			mid++;
			if (highstale - mid)
				FUNC9(&blp[mid + 1], &blp[mid],
					(highstale - mid) * sizeof(*blp));
			lfloglow = FUNC10(mid, lfloglow);
			lfloghigh = FUNC7(highstale, lfloghigh);
		}
		FUNC2(&btp->stale, -1);
	}
	/*
	 * Point to the new data entry.
	 */
	dep = (xfs_dir2_data_entry_t *)dup;
	/*
	 * Fill in the leaf entry.
	 */
	blp[mid].hashval = FUNC5(args->hashval);
	blp[mid].address = FUNC5(FUNC22(
				(char *)dep - (char *)hdr));
	FUNC17(tp, bp, lfloglow, lfloghigh);
	/*
	 * Mark space for the data entry used.
	 */
	error = FUNC26(args, bp, dup,
			(xfs_dir2_data_aoff_t)((char *)dup - (char *)hdr),
			(xfs_dir2_data_aoff_t)len, &needlog, &needscan);
	if (error)
		return error;
	/*
	 * Create the new data entry.
	 */
	dep->inumber = FUNC6(args->inumber);
	dep->namelen = args->namelen;
	FUNC8(dep->name, args->name, args->namelen);
	dp->d_ops->data_put_ftype(dep, args->filetype);
	tagp = dp->d_ops->data_entry_tag_p(dep);
	*tagp = FUNC4((char *)dep - (char *)hdr);
	/*
	 * Clean up the bestfree array and log the header, tail, and entry.
	 */
	if (needscan)
		FUNC23(dp, hdr, &needlog);
	if (needlog)
		FUNC25(args, bp);
	FUNC18(tp, bp);
	FUNC24(args, bp, dep);
	FUNC29(dp, bp);
	return 0;
}