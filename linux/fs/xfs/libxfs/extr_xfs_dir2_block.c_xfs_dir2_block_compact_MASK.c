#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_dir2_data_aoff_t ;
struct xfs_dir2_leaf_entry {scalar_t__ address; } ;
struct xfs_dir2_data_hdr {int dummy; } ;
struct xfs_dir2_block_tail {scalar_t__ stale; scalar_t__ count; } ;
struct xfs_da_args {int /*<<< orphan*/  dp; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int XFS_DIR2_NULL_DATAPTR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct xfs_dir2_data_hdr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_da_args*,struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_da_args		*args,
	struct xfs_buf			*bp,
	struct xfs_dir2_data_hdr	*hdr,
	struct xfs_dir2_block_tail	*btp,
	struct xfs_dir2_leaf_entry	*blp,
	int				*needlog,
	int				*lfloghigh,
	int				*lfloglow)
{
	int			fromidx;	/* source leaf index */
	int			toidx;		/* target leaf index */
	int			needscan = 0;
	int			highstale;	/* high stale index */

	fromidx = toidx = FUNC1(btp->count) - 1;
	highstale = *lfloghigh = -1;
	for (; fromidx >= 0; fromidx--) {
		if (blp[fromidx].address == FUNC2(XFS_DIR2_NULL_DATAPTR)) {
			if (highstale == -1)
				highstale = toidx;
			else {
				if (*lfloghigh == -1)
					*lfloghigh = toidx;
				continue;
			}
		}
		if (fromidx < toidx)
			blp[toidx] = blp[fromidx];
		toidx--;
	}
	*lfloglow = toidx + 1 - (FUNC1(btp->stale) - 1);
	*lfloghigh -= FUNC1(btp->stale) - 1;
	FUNC0(&btp->count, -(FUNC1(btp->stale) - 1));
	FUNC4(args, bp,
		(xfs_dir2_data_aoff_t)((char *)blp - (char *)hdr),
		(xfs_dir2_data_aoff_t)((FUNC1(btp->stale) - 1) * sizeof(*blp)),
		needlog, &needscan);
	btp->stale = FUNC2(1);
	/*
	 * If we now need to rebuild the bestfree map, do so.
	 * This needs to happen before the next call to use_free.
	 */
	if (needscan)
		FUNC3(args->dp, hdr, needlog);
}