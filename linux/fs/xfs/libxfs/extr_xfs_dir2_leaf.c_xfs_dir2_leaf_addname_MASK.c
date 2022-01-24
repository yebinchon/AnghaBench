#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_dir2_leaf_entry_t ;
typedef  int xfs_dir2_db_t ;
struct xfs_dir2_data_unused {int dummy; } ;
typedef  struct xfs_dir2_data_unused xfs_dir2_data_unused_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_off_t ;
struct xfs_dir2_data_entry {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  inumber; } ;
typedef  struct xfs_dir2_data_entry xfs_dir2_data_entry_t ;
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int count; int stale; } ;
struct xfs_dir2_leaf_tail {void* bestcount; } ;
struct xfs_dir2_leaf_entry {void* address; void* hashval; } ;
struct xfs_dir2_leaf {int dummy; } ;
typedef  struct xfs_dir2_leaf xfs_dir2_data_hdr ;
struct xfs_dir2_data_free {scalar_t__ length; scalar_t__ offset; } ;
struct xfs_da_args {int hashval; int op_flags; scalar_t__ total; TYPE_2__* geo; int /*<<< orphan*/  filetype; int /*<<< orphan*/  name; int /*<<< orphan*/  namelen; int /*<<< orphan*/  inumber; struct xfs_inode* dp; struct xfs_trans* trans; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
typedef  int /*<<< orphan*/  bestsp ;
typedef  scalar_t__ __be16 ;
struct TYPE_7__ {int /*<<< orphan*/  leafblk; } ;
struct TYPE_6__ {int (* data_entsize ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* leaf_hdr_to_disk ) (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ;scalar_t__* (* data_entry_tag_p ) (struct xfs_dir2_data_entry*) ;int /*<<< orphan*/  (* data_put_ftype ) (struct xfs_dir2_data_entry*,int /*<<< orphan*/ ) ;struct xfs_dir2_data_free* (* data_bestfree_p ) (struct xfs_dir2_leaf*) ;int /*<<< orphan*/  (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int NULLDATAOFF ; 
 int XFS_DA_OP_JUSTCHECK ; 
 int /*<<< orphan*/  XFS_DIR2_DATA_SPACE ; 
 int XFS_DIR2_NULL_DATAPTR ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void**,int) ; 
 int FUNC3 (void*) ; 
 scalar_t__ FUNC4 (int) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,int) ; 
 struct xfs_dir2_leaf_entry* FUNC9 (struct xfs_dir2_leaf*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 struct xfs_dir2_data_free* FUNC12 (struct xfs_dir2_leaf*) ; 
 struct xfs_dir2_data_free* FUNC13 (struct xfs_dir2_leaf*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_dir2_data_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC15 (struct xfs_dir2_data_entry*) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC18 (struct xfs_inode*,struct xfs_dir2_leaf*,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct xfs_da_args*,struct xfs_buf*,struct xfs_dir2_data_entry*) ; 
 int /*<<< orphan*/  FUNC20 (struct xfs_da_args*,struct xfs_buf*) ; 
 int FUNC21 (struct xfs_da_args*,struct xfs_buf*,struct xfs_dir2_data_unused*,int /*<<< orphan*/ ,int,int*,int*) ; 
 int FUNC22 (TYPE_2__*,int) ; 
 int FUNC23 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int) ; 
 int FUNC25 (struct xfs_da_args*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__* FUNC26 (struct xfs_dir2_leaf_tail*) ; 
 int FUNC27 (struct xfs_da_args*,struct xfs_buf*) ; 
 struct xfs_dir2_leaf_tail* FUNC28 (TYPE_2__*,struct xfs_dir2_leaf*) ; 
 int FUNC29 (struct xfs_da_args*,struct xfs_buf*) ; 
 int FUNC30 (struct xfs_da_args*) ; 
 int /*<<< orphan*/  FUNC31 (struct xfs_inode*,struct xfs_buf*) ; 
 int FUNC32 (struct xfs_da_args*,int,struct xfs_buf**) ; 
 int FUNC33 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC34 (struct xfs_inode*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC35 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int*,int*,int*,int*,int*) ; 
 struct xfs_dir2_leaf_entry* FUNC36 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int,int,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC37 (struct xfs_da_args*,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC38 (struct xfs_da_args*,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC39 (struct xfs_da_args*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC40 (struct xfs_da_args*,struct xfs_buf*) ; 
 int FUNC41 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,int,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC42 (struct xfs_trans*,struct xfs_buf*) ; 

int						/* error */
FUNC43(
	struct xfs_da_args	*args)		/* operation arguments */
{
	struct xfs_dir3_icleaf_hdr leafhdr;
	struct xfs_trans	*tp = args->trans;
	__be16			*bestsp;	/* freespace table in leaf */
	__be16			*tagp;		/* end of data entry */
	struct xfs_buf		*dbp;		/* data block buffer */
	struct xfs_buf		*lbp;		/* leaf's buffer */
	struct xfs_dir2_leaf	*leaf;		/* leaf structure */
	struct xfs_inode	*dp = args->dp;	/* incore directory inode */
	struct xfs_dir2_data_hdr *hdr;		/* data block header */
	struct xfs_dir2_data_entry *dep;	/* data block entry */
	struct xfs_dir2_leaf_entry *lep;	/* leaf entry table pointer */
	struct xfs_dir2_leaf_entry *ents;
	struct xfs_dir2_data_unused *dup;	/* data unused entry */
	struct xfs_dir2_leaf_tail *ltp;		/* leaf tail pointer */
	struct xfs_dir2_data_free *bf;		/* bestfree table */
	int			compact;	/* need to compact leaves */
	int			error;		/* error return value */
	int			grown;		/* allocated new data block */
	int			highstale = 0;	/* index of next stale leaf */
	int			i;		/* temporary, index */
	int			index;		/* leaf table position */
	int			length;		/* length of new entry */
	int			lfloglow;	/* low leaf logging index */
	int			lfloghigh;	/* high leaf logging index */
	int			lowstale = 0;	/* index of prev stale leaf */
	int			needbytes;	/* leaf block bytes needed */
	int			needlog;	/* need to log data header */
	int			needscan;	/* need to rescan data free */
	xfs_dir2_db_t		use_block;	/* data block number */

	FUNC17(args);

	error = FUNC41(tp, dp, args->geo->leafblk, -1, &lbp);
	if (error)
		return error;

	/*
	 * Look up the entry by hash value and name.
	 * We know it's not there, our caller has already done a lookup.
	 * So the index is of the entry to insert in front of.
	 * But if there are dup hash values the index is of the first of those.
	 */
	index = FUNC27(args, lbp);
	leaf = lbp->b_addr;
	ltp = FUNC28(args->geo, leaf);
	ents = dp->d_ops->leaf_ents_p(leaf);
	dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
	bestsp = FUNC26(ltp);
	length = dp->d_ops->data_entsize(args->namelen);

	/*
	 * See if there are any entries with the same hash value
	 * and space in their block for the new entry.
	 * This is good because it puts multiple same-hash value entries
	 * in a data block, improving the lookup of those entries.
	 */
	for (use_block = -1, lep = &ents[index];
	     index < leafhdr.count && FUNC3(lep->hashval) == args->hashval;
	     index++, lep++) {
		if (FUNC3(lep->address) == XFS_DIR2_NULL_DATAPTR)
			continue;
		i = FUNC22(args->geo, FUNC3(lep->address));
		FUNC0(i < FUNC3(ltp->bestcount));
		FUNC0(bestsp[i] != FUNC4(NULLDATAOFF));
		if (FUNC1(bestsp[i]) >= length) {
			use_block = i;
			break;
		}
	}
	/*
	 * Didn't find a block yet, linear search all the data blocks.
	 */
	if (use_block == -1) {
		for (i = 0; i < FUNC3(ltp->bestcount); i++) {
			/*
			 * Remember a block we see that's missing.
			 */
			if (bestsp[i] == FUNC4(NULLDATAOFF) &&
			    use_block == -1)
				use_block = i;
			else if (FUNC1(bestsp[i]) >= length) {
				use_block = i;
				break;
			}
		}
	}
	/*
	 * How many bytes do we need in the leaf block?
	 */
	needbytes = 0;
	if (!leafhdr.stale)
		needbytes += sizeof(xfs_dir2_leaf_entry_t);
	if (use_block == -1)
		needbytes += sizeof(xfs_dir2_data_off_t);

	/*
	 * Now kill use_block if it refers to a missing block, so we
	 * can use it as an indication of allocation needed.
	 */
	if (use_block != -1 && bestsp[use_block] == FUNC4(NULLDATAOFF))
		use_block = -1;
	/*
	 * If we don't have enough free bytes but we can make enough
	 * by compacting out stale entries, we'll do that.
	 */
	if ((char *)bestsp - (char *)&ents[leafhdr.count] < needbytes &&
	    leafhdr.stale > 1)
		compact = 1;

	/*
	 * Otherwise if we don't have enough free bytes we need to
	 * convert to node form.
	 */
	else if ((char *)bestsp - (char *)&ents[leafhdr.count] < needbytes) {
		/*
		 * Just checking or no space reservation, give up.
		 */
		if ((args->op_flags & XFS_DA_OP_JUSTCHECK) ||
							args->total == 0) {
			FUNC42(tp, lbp);
			return -ENOSPC;
		}
		/*
		 * Convert to node form.
		 */
		error = FUNC29(args, lbp);
		if (error)
			return error;
		/*
		 * Then add the new entry.
		 */
		return FUNC30(args);
	}
	/*
	 * Otherwise it will fit without compaction.
	 */
	else
		compact = 0;
	/*
	 * If just checking, then it will fit unless we needed to allocate
	 * a new data block.
	 */
	if (args->op_flags & XFS_DA_OP_JUSTCHECK) {
		FUNC42(tp, lbp);
		return use_block == -1 ? -ENOSPC : 0;
	}
	/*
	 * If no allocations are allowed, return now before we've
	 * changed anything.
	 */
	if (args->total == 0 && use_block == -1) {
		FUNC42(tp, lbp);
		return -ENOSPC;
	}
	/*
	 * Need to compact the leaf entries, removing stale ones.
	 * Leave one stale entry behind - the one closest to our
	 * insertion index - and we'll shift that one to our insertion
	 * point later.
	 */
	if (compact) {
		FUNC35(&leafhdr, ents, &index, &lowstale,
			&highstale, &lfloglow, &lfloghigh);
	}
	/*
	 * There are stale entries, so we'll need log-low and log-high
	 * impossibly bad values later.
	 */
	else if (leafhdr.stale) {
		lfloglow = leafhdr.count;
		lfloghigh = -1;
	}
	/*
	 * If there was no data block space found, we need to allocate
	 * a new one.
	 */
	if (use_block == -1) {
		/*
		 * Add the new data block.
		 */
		if ((error = FUNC25(args, XFS_DIR2_DATA_SPACE,
				&use_block))) {
			FUNC42(tp, lbp);
			return error;
		}
		/*
		 * Initialize the block.
		 */
		if ((error = FUNC32(args, use_block, &dbp))) {
			FUNC42(tp, lbp);
			return error;
		}
		/*
		 * If we're adding a new data block on the end we need to
		 * extend the bests table.  Copy it up one entry.
		 */
		if (use_block >= FUNC3(ltp->bestcount)) {
			bestsp--;
			FUNC8(&bestsp[0], &bestsp[1],
				FUNC3(ltp->bestcount) * sizeof(bestsp[0]));
			FUNC2(&ltp->bestcount, 1);
			FUNC40(args, lbp);
			FUNC37(args, lbp, 0,
						FUNC3(ltp->bestcount) - 1);
		}
		/*
		 * If we're filling in a previously empty block just log it.
		 */
		else
			FUNC37(args, lbp, use_block, use_block);
		hdr = dbp->b_addr;
		bf = dp->d_ops->data_bestfree_p(hdr);
		bestsp[use_block] = bf[0].length;
		grown = 1;
	} else {
		/*
		 * Already had space in some data block.
		 * Just read that one in.
		 */
		error = FUNC33(tp, dp,
				   FUNC24(args->geo, use_block),
				   -1, &dbp);
		if (error) {
			FUNC42(tp, lbp);
			return error;
		}
		hdr = dbp->b_addr;
		bf = dp->d_ops->data_bestfree_p(hdr);
		grown = 0;
	}
	/*
	 * Point to the biggest freespace in our data block.
	 */
	dup = (xfs_dir2_data_unused_t *)
	      ((char *)hdr + FUNC1(bf[0].offset));
	needscan = needlog = 0;
	/*
	 * Mark the initial part of our freespace in use for the new entry.
	 */
	error = FUNC21(args, dbp, dup,
			(xfs_dir2_data_aoff_t)((char *)dup - (char *)hdr),
			length, &needlog, &needscan);
	if (error) {
		FUNC42(tp, lbp);
		return error;
	}
	/*
	 * Initialize our new entry (at last).
	 */
	dep = (xfs_dir2_data_entry_t *)dup;
	dep->inumber = FUNC6(args->inumber);
	dep->namelen = args->namelen;
	FUNC7(dep->name, args->name, dep->namelen);
	dp->d_ops->data_put_ftype(dep, args->filetype);
	tagp = dp->d_ops->data_entry_tag_p(dep);
	*tagp = FUNC4((char *)dep - (char *)hdr);
	/*
	 * Need to scan fix up the bestfree table.
	 */
	if (needscan)
		FUNC18(dp, hdr, &needlog);
	/*
	 * Need to log the data block's header.
	 */
	if (needlog)
		FUNC20(args, dbp);
	FUNC19(args, dbp, dep);
	/*
	 * If the bests table needs to be changed, do it.
	 * Log the change unless we've already done that.
	 */
	if (FUNC1(bestsp[use_block]) != FUNC1(bf[0].length)) {
		bestsp[use_block] = bf[0].length;
		if (!grown)
			FUNC37(args, lbp, use_block, use_block);
	}

	lep = FUNC36(&leafhdr, ents, index, compact, lowstale,
				       highstale, &lfloglow, &lfloghigh);

	/*
	 * Fill in the new leaf entry.
	 */
	lep->hashval = FUNC5(args->hashval);
	lep->address = FUNC5(
				FUNC23(args->geo, use_block,
				FUNC1(*tagp)));
	/*
	 * Log the leaf fields and give up the buffers.
	 */
	dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
	FUNC39(args, lbp);
	FUNC38(args, lbp, lfloglow, lfloghigh);
	FUNC34(dp, lbp);
	FUNC31(dp, dbp);
	return 0;
}