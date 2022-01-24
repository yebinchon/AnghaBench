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
struct TYPE_2__ {scalar_t__* stree; } ;
struct dmap {int /*<<< orphan*/ * wmap; TYPE_1__ tree; int /*<<< orphan*/  start; } ;
struct bmap {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  dmtree_t ;

/* Variables and functions */
 scalar_t__ BUDMIN ; 
 int ENOSPC ; 
 int L2BPERDMAP ; 
 int L2DBWORD ; 
 int LEAFIND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct bmap*,struct dmap*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct bmap * bmp,
	       struct dmap * dp, int nblocks, int l2nb, s64 * results)
{
	s64 blkno;
	int leafidx, rc;

	/* can't be more than a dmaps worth of blocks */
	FUNC0(l2nb <= L2BPERDMAP);

	/* search the tree within the dmap page for sufficient
	 * free space.  if sufficient free space is found, dbFindLeaf()
	 * returns the index of the leaf at which free space was found.
	 */
	if (FUNC3((dmtree_t *) & dp->tree, l2nb, &leafidx))
		return -ENOSPC;

	/* determine the block number within the file system corresponding
	 * to the leaf at which free space was found.
	 */
	blkno = FUNC5(dp->start) + (leafidx << L2DBWORD);

	/* if not all bits of the dmap word are free, get the starting
	 * bit number within the dmap word of the required string of free
	 * bits and adjust the block number with this value.
	 */
	if (dp->tree.stree[leafidx + LEAFIND] < BUDMIN)
		blkno += FUNC2(FUNC4(dp->wmap[leafidx]), l2nb);

	/* allocate the blocks */
	if ((rc = FUNC1(bmp, dp, blkno, nblocks)) == 0)
		*results = blkno;

	return (rc);
}