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
struct dmapctl {scalar_t__ leafidx; int* stree; int /*<<< orphan*/  budmin; } ;
struct bmap {int db_maxlevel; scalar_t__ db_maxfreebud; TYPE_1__* db_ipbmap; int /*<<< orphan*/  db_l2nbperpage; } ;
typedef  scalar_t__ s8 ;
typedef  int /*<<< orphan*/  s64 ;
typedef  int /*<<< orphan*/  dmtree_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTLLEAFIND ; 
 int EIO ; 
 int NOFREE ; 
 int /*<<< orphan*/  PSIZE ; 
 size_t ROOT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (scalar_t__) ; 
 struct metapage* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC11 (struct metapage*) ; 

__attribute__((used)) static int
FUNC12(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
{
	struct metapage *mp;
	s8 oldroot;
	int oldval;
	s64 lblkno;
	struct dmapctl *dcp;
	int rc, leafno, ti;

	/* get the buffer for the dmap control page for the specified
	 * block number and control page level.
	 */
	lblkno = FUNC0(blkno, bmp->db_l2nbperpage, level);
	mp = FUNC9(bmp->db_ipbmap, lblkno, PSIZE, 0);
	if (mp == NULL)
		return -EIO;
	dcp = (struct dmapctl *) mp->data;

	if (dcp->leafidx != FUNC3(CTLLEAFIND)) {
		FUNC7(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page\n");
		FUNC10(mp);
		return -EIO;
	}

	/* determine the leaf number corresponding to the block and
	 * the index within the dmap control tree.
	 */
	leafno = FUNC1(blkno, dcp->budmin);
	ti = leafno + FUNC8(dcp->leafidx);

	/* save the current leaf value and the current root level (i.e.
	 * maximum l2 free string described by this dmapctl).
	 */
	oldval = dcp->stree[ti];
	oldroot = dcp->stree[ROOT];

	/* check if this is a control page update for an allocation.
	 * if so, update the leaf to reflect the new leaf value using
	 * dbSplit(); otherwise (deallocation), use dbJoin() to update
	 * the leaf with the new value.  in addition to updating the
	 * leaf, dbSplit() will also split the binary buddy system of
	 * the leaves, if required, and bubble new values within the
	 * dmapctl tree, if required.  similarly, dbJoin() will join
	 * the binary buddy system of leaves and bubble new values up
	 * the dmapctl tree as required by the new leaf value.
	 */
	if (alloc) {
		/* check if we are in the middle of a binary buddy
		 * system.  this happens when we are performing the
		 * first allocation out of an allocation group that
		 * is part (not the first part) of a larger binary
		 * buddy system.  if we are in the middle, back split
		 * the system prior to calling dbSplit() which assumes
		 * that it is at the front of a binary buddy system.
		 */
		if (oldval == NOFREE) {
			rc = FUNC4((dmtree_t *) dcp, leafno);
			if (rc)
				return rc;
			oldval = dcp->stree[ti];
		}
		FUNC6((dmtree_t *) dcp, leafno, dcp->budmin, newval);
	} else {
		rc = FUNC5((dmtree_t *) dcp, leafno, newval);
		if (rc)
			return rc;
	}

	/* check if the root of the current dmap control page changed due
	 * to the update and if the current dmap control page is not at
	 * the current top level (i.e. L0, L1, L2) of the map.  if so (i.e.
	 * root changed and this is not the top level), call this routine
	 * again (recursion) for the next higher level of the mapping to
	 * reflect the change in root for the current dmap control page.
	 */
	if (dcp->stree[ROOT] != oldroot) {
		/* are we below the top level of the map.  if so,
		 * bubble the root up to the next higher level.
		 */
		if (level < bmp->db_maxlevel) {
			/* bubble up the new root of this dmap control page to
			 * the next level.
			 */
			if ((rc =
			     FUNC12(bmp, blkno, dcp->stree[ROOT], alloc,
				      level + 1))) {
				/* something went wrong in bubbling up the new
				 * root value, so backout the changes to the
				 * current dmap control page.
				 */
				if (alloc) {
					FUNC5((dmtree_t *) dcp, leafno,
					       oldval);
				} else {
					/* the dbJoin() above might have
					 * caused a larger binary buddy system
					 * to form and we may now be in the
					 * middle of it.  if this is the case,
					 * back split the buddies.
					 */
					if (dcp->stree[ti] == NOFREE)
						FUNC4((dmtree_t *)
							    dcp, leafno);
					FUNC6((dmtree_t *) dcp, leafno,
						dcp->budmin, oldval);
				}

				/* release the buffer and return the error.
				 */
				FUNC10(mp);
				return (rc);
			}
		} else {
			/* we're at the top level of the map. update
			 * the bmap control page to reflect the size
			 * of the maximum free buddy system.
			 */
			FUNC2(level == bmp->db_maxlevel);
			if (bmp->db_maxfreebud != oldroot) {
				FUNC7(bmp->db_ipbmap->i_sb,
					  "the maximum free buddy is not the old root\n");
			}
			bmp->db_maxfreebud = dcp->stree[ROOT];
		}
	}

	/* write the buffer.
	 */
	FUNC11(mp);

	return (0);
}