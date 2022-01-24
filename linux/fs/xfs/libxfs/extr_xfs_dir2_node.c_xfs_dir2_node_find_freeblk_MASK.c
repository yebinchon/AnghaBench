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
typedef  scalar_t__ xfs_fileoff_t ;
typedef  scalar_t__ xfs_dir2_db_t ;
typedef  int /*<<< orphan*/  xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icfree_hdr {int nvalid; scalar_t__ firstdb; } ;
struct xfs_dir2_free {int dummy; } ;
struct xfs_da_state_blk {int index; scalar_t__ blkno; struct xfs_buf* bp; } ;
struct xfs_da_args {int /*<<< orphan*/  geo; struct xfs_trans* trans; struct xfs_inode* dp; } ;
struct xfs_buf {struct xfs_dir2_free* b_addr; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ;int /*<<< orphan*/ * (* free_bests_p ) (struct xfs_dir2_free*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NULLDATAOFF ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 int /*<<< orphan*/  XFS_DIR2_FREE_OFFSET ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xfs_dir2_free*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ; 
 int /*<<< orphan*/ * FUNC4 (struct xfs_dir2_free*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ; 
 int FUNC6 (struct xfs_inode*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC10 (struct xfs_trans*,struct xfs_inode*,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_trans*,struct xfs_buf*) ; 

__attribute__((used)) static int
FUNC12(
	struct xfs_da_args	*args,
	struct xfs_da_state_blk	*fblk,
	xfs_dir2_db_t		*dbnop,
	struct xfs_buf		**fbpp,
	int			*findexp,
	int			length)
{
	struct xfs_dir3_icfree_hdr freehdr;
	struct xfs_dir2_free	*free = NULL;
	struct xfs_inode	*dp = args->dp;
	struct xfs_trans	*tp = args->trans;
	struct xfs_buf		*fbp = NULL;
	xfs_dir2_db_t		firstfbno;
	xfs_dir2_db_t		lastfbno;
	xfs_dir2_db_t		ifbno = -1;
	xfs_dir2_db_t		dbno = -1;
	xfs_dir2_db_t		fbno;
	xfs_fileoff_t		fo;
	__be16			*bests = NULL;
	int			findex = 0;
	int			error;

	/*
	 * If we came in with a freespace block that means that lookup
	 * found an entry with our hash value.  This is the freespace
	 * block for that data entry.
	 */
	if (fblk) {
		fbp = fblk->bp;
		free = fbp->b_addr;
		findex = fblk->index;
		if (findex >= 0) {
			/* caller already found the freespace for us. */
			bests = dp->d_ops->free_bests_p(free);
			dp->d_ops->free_hdr_from_disk(&freehdr, free);

			FUNC0(findex < freehdr.nvalid);
			FUNC0(FUNC1(bests[findex]) != NULLDATAOFF);
			FUNC0(FUNC1(bests[findex]) >= length);
			dbno = freehdr.firstdb + findex;
			goto found_block;
		}

		/*
		 * The data block looked at didn't have enough room.
		 * We'll start at the beginning of the freespace entries.
		 */
		ifbno = fblk->blkno;
		FUNC11(tp, fbp);
		fbp = NULL;
		fblk->bp = NULL;
	}

	/*
	 * If we don't have a data block yet, we're going to scan the freespace
	 * data for a data block with enough free space in it.
	 */
	error = FUNC6(dp, &fo, XFS_DATA_FORK);
	if (error)
		return error;
	lastfbno = FUNC8(args->geo, (xfs_dablk_t)fo);
	firstfbno = FUNC7(args->geo, XFS_DIR2_FREE_OFFSET);

	for (fbno = lastfbno - 1; fbno >= firstfbno; fbno--) {
		/* If it's ifbno we already looked at it. */
		if (fbno == ifbno)
			continue;

		/*
		 * Read the block.  There can be holes in the freespace blocks,
		 * so this might not succeed.  This should be really rare, so
		 * there's no reason to avoid it.
		 */
		error = FUNC10(tp, dp,
				FUNC9(args->geo, fbno),
				&fbp);
		if (error)
			return error;
		if (!fbp)
			continue;

		free = fbp->b_addr;
		bests = dp->d_ops->free_bests_p(free);
		dp->d_ops->free_hdr_from_disk(&freehdr, free);

		/* Scan the free entry array for a large enough free space. */
		for (findex = freehdr.nvalid - 1; findex >= 0; findex--) {
			if (FUNC1(bests[findex]) != NULLDATAOFF &&
			    FUNC1(bests[findex]) >= length) {
				dbno = freehdr.firstdb + findex;
				goto found_block;
			}
		}

		/* Didn't find free space, go on to next free block */
		FUNC11(tp, fbp);
	}

found_block:
	*dbnop = dbno;
	*fbpp = fbp;
	*findexp = findex;
	return 0;
}