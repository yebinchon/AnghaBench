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
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_37__ {TYPE_1__* d_ops; } ;
typedef  TYPE_2__ xfs_inode_t ;
struct TYPE_38__ {scalar_t__ bestcount; } ;
typedef  TYPE_3__ xfs_dir2_leaf_tail_t ;
struct TYPE_39__ {scalar_t__ magic; } ;
typedef  TYPE_4__ xfs_dir2_leaf_t ;
typedef  int /*<<< orphan*/  xfs_dir2_leaf_entry_t ;
typedef  scalar_t__ xfs_dir2_db_t ;
typedef  TYPE_4__ xfs_dir2_data_hdr_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct TYPE_40__ {int /*<<< orphan*/  count; int /*<<< orphan*/  stale; } ;
typedef  TYPE_6__ xfs_dir2_block_tail_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct TYPE_41__ {TYPE_15__* geo; int /*<<< orphan*/ * trans; TYPE_2__* dp; } ;
typedef  TYPE_7__ xfs_da_args_t ;
struct xfs_dir3_icleaf_hdr {int count; int stale; } ;
struct xfs_dir2_leaf_entry {int dummy; } ;
struct xfs_dir2_data_free {int /*<<< orphan*/  length; } ;
struct xfs_buf {int /*<<< orphan*/ * b_ops; TYPE_4__* b_addr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_36__ {int /*<<< orphan*/  (* leaf_hdr_to_disk ) (TYPE_4__*,struct xfs_dir3_icleaf_hdr*) ;int /*<<< orphan*/  (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,TYPE_4__*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (TYPE_4__*) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (TYPE_4__*) ;} ;
struct TYPE_35__ {int blksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XFS_BLFT_DIR_DATA_BUF ; 
 int XFS_DIR2_BLOCK_MAGIC ; 
 int XFS_DIR2_DATA_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF1_MAGIC ; 
 int /*<<< orphan*/  XFS_DIR2_LEAF_OFFSET ; 
 int XFS_DIR3_DATA_MAGIC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dir2_leaf_entry*,int /*<<< orphan*/ *,int) ; 
 struct xfs_dir2_data_free* FUNC4 (TYPE_4__*) ; 
 struct xfs_dir2_leaf_entry* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_dir3_icleaf_hdr*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,struct xfs_dir3_icleaf_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int FUNC9 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_6__*) ; 
 TYPE_6__* FUNC11 (TYPE_15__*,TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_15__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_15__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC17 (TYPE_3__*) ; 
 TYPE_3__* FUNC18 (TYPE_15__*,TYPE_4__*) ; 
 int /*<<< orphan*/  xfs_dir3_data_buf_ops ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,struct xfs_buf*) ; 
 int FUNC21 (TYPE_7__*,scalar_t__,struct xfs_buf**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_7__*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*,struct xfs_buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,struct xfs_buf*,int /*<<< orphan*/ ) ; 

int						/* error */
FUNC26(
	xfs_da_args_t		*args,		/* operation arguments */
	struct xfs_buf		*dbp)		/* input block's buffer */
{
	__be16			*bestsp;	/* leaf's bestsp entries */
	xfs_dablk_t		blkno;		/* leaf block's bno */
	xfs_dir2_data_hdr_t	*hdr;		/* block header */
	xfs_dir2_leaf_entry_t	*blp;		/* block's leaf entries */
	xfs_dir2_block_tail_t	*btp;		/* block's tail */
	xfs_inode_t		*dp;		/* incore directory inode */
	int			error;		/* error return code */
	struct xfs_buf		*lbp;		/* leaf block's buffer */
	xfs_dir2_db_t		ldb;		/* leaf block's bno */
	xfs_dir2_leaf_t		*leaf;		/* leaf structure */
	xfs_dir2_leaf_tail_t	*ltp;		/* leaf's tail */
	int			needlog;	/* need to log block header */
	int			needscan;	/* need to rescan bestfree */
	xfs_trans_t		*tp;		/* transaction pointer */
	struct xfs_dir2_data_free *bf;
	struct xfs_dir2_leaf_entry *ents;
	struct xfs_dir3_icleaf_hdr leafhdr;

	FUNC8(args);

	dp = args->dp;
	tp = args->trans;
	/*
	 * Add the leaf block to the inode.
	 * This interface will only put blocks in the leaf/node range.
	 * Since that's empty now, we'll get the root (block 0 in range).
	 */
	if ((error = FUNC9(args, &blkno))) {
		return error;
	}
	ldb = FUNC13(args->geo, blkno);
	FUNC0(ldb == FUNC12(args->geo, XFS_DIR2_LEAF_OFFSET));
	/*
	 * Initialize the leaf block, get a buffer for it.
	 */
	error = FUNC21(args, ldb, &lbp, XFS_DIR2_LEAF1_MAGIC);
	if (error)
		return error;

	leaf = lbp->b_addr;
	hdr = dbp->b_addr;
	FUNC19(dp, dbp);
	btp = FUNC11(args->geo, hdr);
	blp = FUNC10(btp);
	bf = dp->d_ops->data_bestfree_p(hdr);
	ents = dp->d_ops->leaf_ents_p(leaf);

	/*
	 * Set the counts in the leaf header.
	 */
	dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
	leafhdr.count = FUNC1(btp->count);
	leafhdr.stale = FUNC1(btp->stale);
	dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
	FUNC24(args, lbp);

	/*
	 * Could compact these but I think we always do the conversion
	 * after squeezing out stale entries.
	 */
	FUNC3(ents, blp, FUNC1(btp->count) * sizeof(xfs_dir2_leaf_entry_t));
	FUNC23(args, lbp, 0, leafhdr.count - 1);
	needscan = 0;
	needlog = 1;
	/*
	 * Make the space formerly occupied by the leaf entries and block
	 * tail be free.
	 */
	FUNC16(args, dbp,
		(xfs_dir2_data_aoff_t)((char *)blp - (char *)hdr),
		(xfs_dir2_data_aoff_t)((char *)hdr + args->geo->blksize -
				       (char *)blp),
		&needlog, &needscan);
	/*
	 * Fix up the block header, make it a data block.
	 */
	dbp->b_ops = &xfs_dir3_data_buf_ops;
	FUNC25(tp, dbp, XFS_BLFT_DIR_DATA_BUF);
	if (hdr->magic == FUNC2(XFS_DIR2_BLOCK_MAGIC))
		hdr->magic = FUNC2(XFS_DIR2_DATA_MAGIC);
	else
		hdr->magic = FUNC2(XFS_DIR3_DATA_MAGIC);

	if (needscan)
		FUNC14(dp, hdr, &needlog);
	/*
	 * Set up leaf tail and bests table.
	 */
	ltp = FUNC18(args->geo, leaf);
	ltp->bestcount = FUNC2(1);
	bestsp = FUNC17(ltp);
	bestsp[0] =  bf[0].length;
	/*
	 * Log the data header and leaf bests table.
	 */
	if (needlog)
		FUNC15(args, dbp);
	FUNC20(dp, lbp);
	FUNC19(dp, dbp);
	FUNC22(args, lbp, 0, 0);
	return 0;
}