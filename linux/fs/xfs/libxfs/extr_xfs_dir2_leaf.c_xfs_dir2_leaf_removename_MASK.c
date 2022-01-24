#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_15__ ;

/* Type definitions */
struct TYPE_27__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_28__ {int /*<<< orphan*/  bestcount; } ;
typedef  TYPE_3__ xfs_dir2_leaf_tail_t ;
typedef  int /*<<< orphan*/  xfs_dir2_leaf_t ;
struct xfs_dir2_leaf_entry {int /*<<< orphan*/  address; } ;
typedef  struct xfs_dir2_leaf_entry xfs_dir2_leaf_entry_t ;
typedef  size_t xfs_dir2_db_t ;
typedef  scalar_t__ xfs_dir2_data_off_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_hdr_t ;
struct TYPE_29__ {int /*<<< orphan*/  namelen; } ;
typedef  TYPE_4__ xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct TYPE_30__ {scalar_t__ total; TYPE_15__* geo; TYPE_2__* dp; } ;
typedef  TYPE_5__ xfs_da_args_t ;
struct xfs_dir3_icleaf_hdr {int /*<<< orphan*/  stale; } ;
struct xfs_dir2_data_free {scalar_t__ length; } ;
struct xfs_buf {int /*<<< orphan*/ * b_addr; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_26__ {scalar_t__ data_entry_offset; int /*<<< orphan*/  (* leaf_hdr_to_disk ) (int /*<<< orphan*/ *,struct xfs_dir3_icleaf_hdr*) ;int /*<<< orphan*/  (* data_entsize ) (int /*<<< orphan*/ ) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int /*<<< orphan*/ *) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_25__ {scalar_t__ blksize; size_t datablk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int ENOSPC ; 
 int /*<<< orphan*/  NULLDATAOFF ; 
 int /*<<< orphan*/  XFS_DIR2_NULL_DATAPTR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,size_t) ; 
 struct xfs_dir2_data_free* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_dir3_icleaf_hdr*,int /*<<< orphan*/ *) ; 
 struct xfs_dir2_leaf_entry* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct xfs_dir3_icleaf_hdr*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 size_t FUNC16 (TYPE_15__*,int) ; 
 int FUNC17 (TYPE_15__*,int) ; 
 scalar_t__* FUNC18 (TYPE_3__*) ; 
 int FUNC19 (TYPE_5__*,struct xfs_buf**,int*,struct xfs_buf**) ; 
 TYPE_3__* FUNC20 (TYPE_15__*,int /*<<< orphan*/ *) ; 
 int FUNC21 (TYPE_5__*,struct xfs_buf*,struct xfs_buf*) ; 
 int FUNC22 (TYPE_5__*,size_t,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*,struct xfs_buf*,size_t,int) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_5__*,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_5__*,struct xfs_buf*) ; 

int						/* error */
FUNC29(
	xfs_da_args_t		*args)		/* operation arguments */
{
	__be16			*bestsp;	/* leaf block best freespace */
	xfs_dir2_data_hdr_t	*hdr;		/* data block header */
	xfs_dir2_db_t		db;		/* data block number */
	struct xfs_buf		*dbp;		/* data block buffer */
	xfs_dir2_data_entry_t	*dep;		/* data entry structure */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	xfs_dir2_db_t		i;		/* temporary data block # */
	int			index;		/* index into leaf entries */
	struct xfs_buf		*lbp;		/* leaf buffer */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_entry_t	*lep;		/* leaf entry */
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf tail structure */
	int			needlog;	/* need to log data header */
	int			needscan;	/* need to rescan data frees */
	xfs_dir2_data_off_t	oldbest;	/* old value of best free */
	struct xfs_dir2_data_free *bf;		/* bestfree table */
	struct xfs_dir2_leaf_entry *ents;
	struct xfs_dir3_icleaf_hdr leafhdr;

	FUNC12(args);

	/*
	 * Lookup the leaf entry, get the leaf and data blocks read in.
	 */
	if ((error = FUNC19(args, &lbp, &index, &dbp))) {
		return error;
	}
	dp = args->dp;
	leaf = lbp->b_addr;
	hdr = dbp->b_addr;
	FUNC23(dp, dbp);
	bf = dp->d_ops->data_bestfree_p(hdr);
	dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
	ents = dp->d_ops->leaf_ents_p(leaf);
	/*
	 * Point to the leaf entry, use that to point to the data entry.
	 */
	lep = &ents[index];
	db = FUNC16(args->geo, FUNC3(lep->address));
	dep = (xfs_dir2_data_entry_t *)((char *)hdr +
		FUNC17(args->geo, FUNC3(lep->address)));
	needscan = needlog = 0;
	oldbest = FUNC1(bf[0].length);
	ltp = FUNC20(args->geo, leaf);
	bestsp = FUNC18(ltp);
	if (FUNC1(bestsp[db]) != oldbest)
		return -EFSCORRUPTED;
	/*
	 * Mark the former data entry unused.
	 */
	FUNC15(args, dbp,
		(xfs_dir2_data_aoff_t)((char *)dep - (char *)hdr),
		dp->d_ops->data_entsize(dep->namelen), &needlog, &needscan);
	/*
	 * We just mark the leaf entry stale by putting a null in it.
	 */
	leafhdr.stale++;
	dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
	FUNC27(args, lbp);

	lep->address = FUNC5(XFS_DIR2_NULL_DATAPTR);
	FUNC26(args, lbp, index, index);

	/*
	 * Scan the freespace in the data block again if necessary,
	 * log the data block header if necessary.
	 */
	if (needscan)
		FUNC13(dp, hdr, &needlog);
	if (needlog)
		FUNC14(args, dbp);
	/*
	 * If the longest freespace in the data block has changed,
	 * put the new value in the bests table and log that.
	 */
	if (FUNC1(bf[0].length) != oldbest) {
		bestsp[db] = bf[0].length;
		FUNC25(args, lbp, db, db);
	}
	FUNC23(dp, dbp);
	/*
	 * If the data block is now empty then get rid of the data block.
	 */
	if (FUNC1(bf[0].length) ==
			args->geo->blksize - dp->d_ops->data_entry_offset) {
		FUNC0(db != args->geo->datablk);
		if ((error = FUNC22(args, db, dbp))) {
			/*
			 * Nope, can't get rid of it because it caused
			 * allocation of a bmap btree block to do so.
			 * Just go on, returning success, leaving the
			 * empty block in place.
			 */
			if (error == -ENOSPC && args->total == 0)
				error = 0;
			FUNC24(dp, lbp);
			return error;
		}
		dbp = NULL;
		/*
		 * If this is the last data block then compact the
		 * bests table by getting rid of entries.
		 */
		if (db == FUNC3(ltp->bestcount) - 1) {
			/*
			 * Look for the last active entry (i).
			 */
			for (i = db - 1; i > 0; i--) {
				if (bestsp[i] != FUNC4(NULLDATAOFF))
					break;
			}
			/*
			 * Copy the table down so inactive entries at the
			 * end are removed.
			 */
			FUNC6(&bestsp[db - i], bestsp,
				(FUNC3(ltp->bestcount) - (db - i)) * sizeof(*bestsp));
			FUNC2(&ltp->bestcount, -(db - i));
			FUNC28(args, lbp);
			FUNC25(args, lbp, 0,
						FUNC3(ltp->bestcount) - 1);
		} else
			bestsp[db] = FUNC4(NULLDATAOFF);
	}
	/*
	 * If the data block was not the first one, drop it.
	 */
	else if (db != args->geo->datablk)
		dbp = NULL;

	FUNC24(dp, lbp);
	/*
	 * See if we can convert to block form.
	 */
	return FUNC21(args, lbp, dbp);
}