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
typedef  int /*<<< orphan*/  u8 ;
struct dmap {int /*<<< orphan*/  nfree; int /*<<< orphan*/ * wmap; int /*<<< orphan*/  tree; } ;
struct bmap {int db_agl2size; int db_nfree; int* db_agfree; int db_agsize; int db_maxag; int db_numag; int db_mapsize; size_t db_agpref; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  dmtree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct bmap*) ; 
 int BPERDMAP ; 
 int /*<<< orphan*/  BUDMIN ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int DBWORD ; 
 int L2DBWORD ; 
 int /*<<< orphan*/  L2LPERDMAP ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int ONES ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int,int) ; 

__attribute__((used)) static int FUNC12(struct bmap * bmp, struct dmap * dp, s64 blkno,
		       int nblocks)
{
	int dbitno, word, rembits, nb, nwords, wbitno, nw, agno;
	dmtree_t *tp = (dmtree_t *) & dp->tree;
	int rc = 0;
	int size;

	/* determine the bit number and word within the dmap of the
	 * starting block.
	 */
	dbitno = blkno & (BPERDMAP - 1);
	word = dbitno >> L2DBWORD;

	/* block range better be within the dmap.
	 */
	FUNC5(dbitno + nblocks <= BPERDMAP);

	/* free the bits of the dmaps words corresponding to the block range.
	 * not all bits of the first and last words may be contained within
	 * the block range.  if this is the case, we'll work against those
	 * words (i.e. partial first and/or last) on an individual basis
	 * (a single pass), freeing the bits of interest by hand and updating
	 * the leaf corresponding to the dmap word. a single pass will be used
	 * for all dmap words fully contained within the specified range.
	 * within this pass, the bits of all fully contained dmap words will
	 * be marked as free in a single shot and the leaves will be updated. a
	 * single leaf may describe the free space of multiple dmap words,
	 * so we may update only a subset of the actual leaves corresponding
	 * to the dmap words of the block range.
	 *
	 * dbJoin() is used to update leaf values and will join the binary
	 * buddy system of the leaves if the new leaf values indicate this
	 * should be done.
	 */
	for (rembits = nblocks; rembits > 0; rembits -= nb, dbitno += nb) {
		/* determine the bit number within the word and
		 * the number of bits within the word.
		 */
		wbitno = dbitno & (DBWORD - 1);
		nb = FUNC11(rembits, DBWORD - wbitno);

		/* check if only part of a word is to be freed.
		 */
		if (nb < DBWORD) {
			/* free (zero) the appropriate bits within this
			 * dmap word.
			 */
			dp->wmap[word] &=
			    FUNC6(~(ONES << (DBWORD - nb)
					  >> wbitno));

			/* update the leaf for this dmap word.
			 */
			rc = FUNC7(tp, word,
				    FUNC8((u8 *) & dp->wmap[word]));
			if (rc)
				return rc;

			word += 1;
		} else {
			/* one or more dmap words are fully contained
			 * within the block range.  determine how many
			 * words and free (zero) the bits of these words.
			 */
			nwords = rembits >> L2DBWORD;
			FUNC10(&dp->wmap[word], 0, nwords * 4);

			/* determine how many bits.
			 */
			nb = nwords << L2DBWORD;

			/* now update the appropriate leaves to reflect
			 * the freed words.
			 */
			for (; nwords > 0; nwords -= nw) {
				/* determine what the leaf value should be
				 * updated to as the minimum of the l2 number
				 * of bits being freed and the l2 (max) number
				 * of bits that can be described by this leaf.
				 */
				size =
				    FUNC11(FUNC3
					(word, L2LPERDMAP, BUDMIN),
					FUNC4(nwords));

				/* update the leaf.
				 */
				rc = FUNC7(tp, word, size);
				if (rc)
					return rc;

				/* get the number of dmap words handled.
				 */
				nw = FUNC2(size, BUDMIN);
				word += nw;
			}
		}
	}

	/* update the free count for this dmap.
	 */
	FUNC9(&dp->nfree, nblocks);

	FUNC0(bmp);

	/* update the free count for the allocation group and
	 * map.
	 */
	agno = blkno >> bmp->db_agl2size;
	bmp->db_nfree += nblocks;
	bmp->db_agfree[agno] += nblocks;

	/* check if this allocation group is not completely free and
	 * if it is currently the maximum (rightmost) allocation group.
	 * if so, establish the new maximum allocation group number by
	 * searching left for the first allocation group with allocation.
	 */
	if ((bmp->db_agfree[agno] == bmp->db_agsize && agno == bmp->db_maxag) ||
	    (agno == bmp->db_numag - 1 &&
	     bmp->db_agfree[agno] == (bmp-> db_mapsize & (BPERDMAP - 1)))) {
		while (bmp->db_maxag > 0) {
			bmp->db_maxag -= 1;
			if (bmp->db_agfree[bmp->db_maxag] !=
			    bmp->db_agsize)
				break;
		}

		/* re-establish the allocation group preference if the
		 * current preference is right of the maximum allocation
		 * group.
		 */
		if (bmp->db_agpref > bmp->db_maxag)
			bmp->db_agpref = bmp->db_maxag;
	}

	FUNC1(bmp);

	return 0;
}