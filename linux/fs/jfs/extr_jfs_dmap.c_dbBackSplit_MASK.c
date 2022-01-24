#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int s8 ;
struct TYPE_4__ {int* dmt_stree; int /*<<< orphan*/  dmt_nleafs; int /*<<< orphan*/  dmt_budmin; int /*<<< orphan*/  dmt_l2nleafs; int /*<<< orphan*/  dmt_leafidx; } ;
typedef  TYPE_1__ dmtree_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int NOFREE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(dmtree_t * tp, int leafno)
{
	int budsz, bud, w, bsz, size;
	int cursz;
	s8 *leaf = tp->dmt_stree + FUNC5(tp->dmt_leafidx);

	/* leaf should be part (not first part) of a binary
	 * buddy system.
	 */
	FUNC2(leaf[leafno] == NOFREE);

	/* the back split is accomplished by iteratively finding the leaf
	 * that starts the buddy system that contains the specified leaf and
	 * splitting that system in two.  this iteration continues until
	 * the specified leaf becomes the start of a buddy system.
	 *
	 * determine maximum possible l2 size for the specified leaf.
	 */
	size =
	    FUNC1(leafno, FUNC5(tp->dmt_l2nleafs),
		      tp->dmt_budmin);

	/* determine the number of leaves covered by this size.  this
	 * is the buddy size that we will start with as we search for
	 * the buddy system that contains the specified leaf.
	 */
	budsz = FUNC0(size, tp->dmt_budmin);

	/* back split.
	 */
	while (leaf[leafno] == NOFREE) {
		/* find the leftmost buddy leaf.
		 */
		for (w = leafno, bsz = budsz;; bsz <<= 1,
		     w = (w < bud) ? w : bud) {
			if (bsz >= FUNC5(tp->dmt_nleafs)) {
				FUNC4("JFS: block map error in dbBackSplit");
				return -EIO;
			}

			/* determine the buddy.
			 */
			bud = w ^ bsz;

			/* check if this buddy is the start of the system.
			 */
			if (leaf[bud] != NOFREE) {
				/* split the leaf at the start of the
				 * system in two.
				 */
				cursz = leaf[bud] - 1;
				FUNC3(tp, bud, cursz, cursz);
				break;
			}
		}
	}

	if (leaf[leafno] != size) {
		FUNC4("JFS: wrong leaf value in dbBackSplit");
		return -EIO;
	}
	return 0;
}