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
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int count; int stale; } ;
struct xfs_dir2_leaf_entry {void* address; void* hashval; } ;
struct xfs_dir2_leaf {int dummy; } ;
struct xfs_da_args {scalar_t__ hashval; int op_flags; int /*<<< orphan*/  index; int /*<<< orphan*/  blkno; int /*<<< orphan*/  geo; struct xfs_inode* dp; } ;
struct xfs_buf {struct xfs_dir2_leaf* b_addr; } ;
struct TYPE_2__ {int (* leaf_max_ents ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* leaf_hdr_to_disk ) (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ;struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (struct xfs_dir2_leaf*) ;int /*<<< orphan*/  (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EFSCORRUPTED ; 
 int ENOSPC ; 
 int XFS_DA_OP_JUSTCHECK ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf*) ; 
 struct xfs_dir2_leaf_entry* FUNC4 (struct xfs_dir2_leaf*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_dir2_leaf*,struct xfs_dir3_icleaf_hdr*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_da_args*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int*,int*,int*,int*,int*) ; 
 struct xfs_dir2_leaf_entry* FUNC11 (struct xfs_dir3_icleaf_hdr*,struct xfs_dir2_leaf_entry*,int,int,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_da_args*,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_da_args*,struct xfs_buf*) ; 

__attribute__((used)) static int					/* error */
FUNC14(
	struct xfs_buf		*bp,		/* leaf buffer */
	struct xfs_da_args	*args,		/* operation arguments */
	int			index)		/* insertion pt for new entry */
{
	struct xfs_dir3_icleaf_hdr leafhdr;
	struct xfs_inode	*dp = args->dp;
	struct xfs_dir2_leaf	*leaf = bp->b_addr;
	struct xfs_dir2_leaf_entry *lep;
	struct xfs_dir2_leaf_entry *ents;
	int			compact;	/* compacting stale leaves */
	int			highstale = 0;	/* next stale entry */
	int			lfloghigh;	/* high leaf entry logging */
	int			lfloglow;	/* low leaf entry logging */
	int			lowstale = 0;	/* previous stale entry */

	FUNC7(args, index);

	dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
	ents = dp->d_ops->leaf_ents_p(leaf);

	/*
	 * Quick check just to make sure we are not going to index
	 * into other peoples memory
	 */
	if (index < 0)
		return -EFSCORRUPTED;

	/*
	 * If there are already the maximum number of leaf entries in
	 * the block, if there are no stale entries it won't fit.
	 * Caller will do a split.  If there are stale entries we'll do
	 * a compact.
	 */

	if (leafhdr.count == dp->d_ops->leaf_max_ents(args->geo)) {
		if (!leafhdr.stale)
			return -ENOSPC;
		compact = leafhdr.stale > 1;
	} else
		compact = 0;
	FUNC0(index == 0 || FUNC1(ents[index - 1].hashval) <= args->hashval);
	FUNC0(index == leafhdr.count ||
	       FUNC1(ents[index].hashval) >= args->hashval);

	if (args->op_flags & XFS_DA_OP_JUSTCHECK)
		return 0;

	/*
	 * Compact out all but one stale leaf entry.  Leaves behind
	 * the entry closest to index.
	 */
	if (compact)
		FUNC10(&leafhdr, ents, &index, &lowstale,
					 &highstale, &lfloglow, &lfloghigh);
	else if (leafhdr.stale) {
		/*
		 * Set impossible logging indices for this case.
		 */
		lfloglow = leafhdr.count;
		lfloghigh = -1;
	}

	/*
	 * Insert the new entry, log everything.
	 */
	lep = FUNC11(&leafhdr, ents, index, compact, lowstale,
				       highstale, &lfloglow, &lfloghigh);

	lep->hashval = FUNC2(args->hashval);
	lep->address = FUNC2(FUNC8(args->geo,
				args->blkno, args->index));

	dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
	FUNC13(args, bp);
	FUNC12(args, bp, lfloglow, lfloghigh);
	FUNC9(dp, bp);
	return 0;
}