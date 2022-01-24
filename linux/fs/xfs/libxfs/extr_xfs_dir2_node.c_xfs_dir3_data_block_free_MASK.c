#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_dir2_db_t ;
struct TYPE_8__ {scalar_t__ total; struct xfs_inode* dp; } ;
typedef  TYPE_2__ xfs_da_args_t ;
struct xfs_inode {TYPE_1__* d_ops; } ;
struct xfs_dir3_icfree_hdr {int nvalid; int /*<<< orphan*/  nused; } ;
struct xfs_dir2_free {int dummy; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct xfs_buf {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_7__ {int /*<<< orphan*/  (* free_hdr_to_disk ) (struct xfs_dir2_free*,struct xfs_dir3_icfree_hdr*) ;int /*<<< orphan*/ * (* free_bests_p ) (struct xfs_dir2_free*) ;int /*<<< orphan*/  (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ;} ;

/* Variables and functions */
 int ENOSPC ; 
 int NULLDATAOFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_dir3_icfree_hdr*,struct xfs_dir2_free*) ; 
 int /*<<< orphan*/ * FUNC2 (struct xfs_dir2_free*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_dir2_free*,struct xfs_dir3_icfree_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct xfs_buf*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct xfs_buf*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,struct xfs_buf*) ; 

__attribute__((used)) static int
FUNC7(
	xfs_da_args_t		*args,
	struct xfs_dir2_data_hdr *hdr,
	struct xfs_dir2_free	*free,
	xfs_dir2_db_t		fdb,
	int			findex,
	struct xfs_buf		*fbp,
	int			longest)
{
	int			logfree = 0;
	__be16			*bests;
	struct xfs_dir3_icfree_hdr freehdr;
	struct xfs_inode	*dp = args->dp;

	dp->d_ops->free_hdr_from_disk(&freehdr, free);
	bests = dp->d_ops->free_bests_p(free);
	if (hdr) {
		/*
		 * Data block is not empty, just set the free entry to the new
		 * value.
		 */
		bests[findex] = FUNC0(longest);
		FUNC4(args, fbp, findex, findex);
		return 0;
	}

	/* One less used entry in the free table. */
	freehdr.nused--;

	/*
	 * If this was the last entry in the table, we can trim the table size
	 * back.  There might be other entries at the end referring to
	 * non-existent data blocks, get those too.
	 */
	if (findex == freehdr.nvalid - 1) {
		int	i;		/* free entry index */

		for (i = findex - 1; i >= 0; i--) {
			if (bests[i] != FUNC0(NULLDATAOFF))
				break;
		}
		freehdr.nvalid = i + 1;
		logfree = 0;
	} else {
		/* Not the last entry, just punch it out.  */
		bests[findex] = FUNC0(NULLDATAOFF);
		logfree = 1;
	}

	dp->d_ops->free_hdr_to_disk(free, &freehdr);
	FUNC5(args, fbp);

	/*
	 * If there are no useful entries left in the block, get rid of the
	 * block if we can.
	 */
	if (!freehdr.nused) {
		int error;

		error = FUNC6(args, fdb, fbp);
		if (error == 0) {
			fbp = NULL;
			logfree = 0;
		} else if (error != -ENOSPC || args->total != 0)
			return error;
		/*
		 * It's possible to get ENOSPC if there is no
		 * space reservation.  In this case some one
		 * else will eventually get rid of this block.
		 */
	}

	/* Log the free entry that changed, unless we got rid of it.  */
	if (logfree)
		FUNC4(args, fbp, findex, findex);
	return 0;
}