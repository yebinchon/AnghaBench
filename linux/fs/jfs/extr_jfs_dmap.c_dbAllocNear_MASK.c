#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ leafidx; int* stree; } ;
struct dmap {scalar_t__* wmap; int /*<<< orphan*/  start; TYPE_2__ tree; } ;
struct bmap {TYPE_1__* db_ipbmap; } ;
typedef  int s8 ;
typedef  int s64 ;
struct TYPE_3__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int BPERDMAP ; 
 int BUDMIN ; 
 int EIO ; 
 int ENOSPC ; 
 int L2DBWORD ; 
 int /*<<< orphan*/  LEAFIND ; 
 int /*<<< orphan*/  LPERDMAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bmap*,struct dmap*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct bmap * bmp,
	    struct dmap * dp, s64 blkno, int nblocks, int l2nb, s64 * results)
{
	int word, lword, rc;
	s8 *leaf;

	if (dp->tree.leafidx != FUNC0(LEAFIND)) {
		FUNC3(bmp->db_ipbmap->i_sb, "Corrupt dmap page\n");
		return -EIO;
	}

	leaf = dp->tree.stree + FUNC4(dp->tree.leafidx);

	/* determine the word within the dmap that holds the hint
	 * (i.e. blkno).  also, determine the last word in the dmap
	 * that we'll include in our examination.
	 */
	word = (blkno & (BPERDMAP - 1)) >> L2DBWORD;
	lword = FUNC6(word + 4, LPERDMAP);

	/* examine the leaves for sufficient free space.
	 */
	for (; word < lword; word++) {
		/* does the leaf describe sufficient free space ?
		 */
		if (leaf[word] < l2nb)
			continue;

		/* determine the block number within the file system
		 * of the first block described by this dmap word.
		 */
		blkno = FUNC5(dp->start) + (word << L2DBWORD);

		/* if not all bits of the dmap word are free, get the
		 * starting bit number within the dmap word of the required
		 * string of free bits and adjust the block number with the
		 * value.
		 */
		if (leaf[word] < BUDMIN)
			blkno +=
			    FUNC2(FUNC4(dp->wmap[word]), l2nb);

		/* allocate the blocks.
		 */
		if ((rc = FUNC1(bmp, dp, blkno, nblocks)) == 0)
			*results = blkno;

		return (rc);
	}

	return -ENOSPC;
}