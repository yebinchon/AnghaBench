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
struct metapage {scalar_t__ data; } ;
struct dmapctl {int budmin; scalar_t__ leafidx; } ;
struct bmap {TYPE_1__* db_ipbmap; int /*<<< orphan*/  db_l2nbperpage; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  dmtree_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CTLLEAFIND ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  PSIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct metapage* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct metapage*) ; 

__attribute__((used)) static int FUNC6(struct bmap * bmp, int l2nb, int level, s64 * blkno)
{
	int rc, leafidx, lev;
	s64 b, lblkno;
	struct dmapctl *dcp;
	int budmin;
	struct metapage *mp;

	/* starting at the specified dmap control page level and block
	 * number, search down the dmap control levels for the starting
	 * block number of a dmap page that contains or starts off
	 * sufficient free blocks.
	 */
	for (lev = level, b = *blkno; lev >= 0; lev--) {
		/* get the buffer of the dmap control page for the block
		 * number and level (i.e. L0, L1, L2).
		 */
		lblkno = FUNC0(b, bmp->db_l2nbperpage, lev);
		mp = FUNC4(bmp->db_ipbmap, lblkno, PSIZE, 0);
		if (mp == NULL)
			return -EIO;
		dcp = (struct dmapctl *) mp->data;
		budmin = dcp->budmin;

		if (dcp->leafidx != FUNC1(CTLLEAFIND)) {
			FUNC3(bmp->db_ipbmap->i_sb,
				  "Corrupt dmapctl page\n");
			FUNC5(mp);
			return -EIO;
		}

		/* search the tree within the dmap control page for
		 * sufficient free space.  if sufficient free space is found,
		 * dbFindLeaf() returns the index of the leaf at which
		 * free space was found.
		 */
		rc = FUNC2((dmtree_t *) dcp, l2nb, &leafidx);

		/* release the buffer.
		 */
		FUNC5(mp);

		/* space found ?
		 */
		if (rc) {
			if (lev != level) {
				FUNC3(bmp->db_ipbmap->i_sb,
					  "dmap inconsistent\n");
				return -EIO;
			}
			return -ENOSPC;
		}

		/* adjust the block number to reflect the location within
		 * the dmap control page (i.e. the leaf) at which free
		 * space was found.
		 */
		b += (((s64) leafidx) << budmin);

		/* we stop the search at this dmap control page level if
		 * the number of blocks required is greater than or equal
		 * to the maximum number of blocks described at the next
		 * (lower) level.
		 */
		if (l2nb >= budmin)
			break;
	}

	*blkno = b;
	return (0);
}