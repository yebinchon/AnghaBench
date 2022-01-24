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
struct metapage {scalar_t__ data; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dmap {int dummy; } ;
struct bmap {scalar_t__ db_mapsize; int db_agl2size; int db_agsize; int /*<<< orphan*/ * db_active; int /*<<< orphan*/  db_l2nbperpage; } ;
typedef  scalar_t__ s64 ;
struct TYPE_4__ {int active_ag; } ;
struct TYPE_3__ {struct bmap* bmap; struct inode* ipbmap; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ BPERDMAP ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 TYPE_2__* FUNC6 (struct inode*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSIZE ; 
 int /*<<< orphan*/  RDWRLOCK_DMAP ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct bmap*,int,scalar_t__,int,scalar_t__*) ; 
 int FUNC11 (struct bmap*,scalar_t__,int,scalar_t__*) ; 
 int FUNC12 (struct bmap*,struct dmap*,int,int,scalar_t__*) ; 
 int FUNC13 (struct bmap*,struct dmap*,scalar_t__,int,int,scalar_t__*) ; 
 int FUNC14 (struct bmap*,struct dmap*,scalar_t__,int) ; 
 int FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct metapage*) ; 
 struct metapage* FUNC18 (struct inode*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct metapage*) ; 

int FUNC20(struct inode *ip, s64 hint, s64 nblocks, s64 * results)
{
	int rc, agno;
	struct inode *ipbmap = FUNC7(ip->i_sb)->ipbmap;
	struct bmap *bmp;
	struct metapage *mp;
	s64 lblkno, blkno;
	struct dmap *dp;
	int l2nb;
	s64 mapSize;
	int writers;

	/* assert that nblocks is valid */
	FUNC8(nblocks > 0);

	/* get the log2 number of blocks to be allocated.
	 * if the number of blocks is not a log2 multiple,
	 * it will be rounded up to the next log2 multiple.
	 */
	l2nb = FUNC0(nblocks);

	bmp = FUNC7(ip->i_sb)->bmap;

	mapSize = bmp->db_mapsize;

	/* the hint should be within the map */
	if (hint >= mapSize) {
		FUNC16(ip->i_sb, "the hint is outside the map\n");
		return -EIO;
	}

	/* if the number of blocks to be allocated is greater than the
	 * allocation group size, try to allocate anywhere.
	 */
	if (l2nb > bmp->db_agl2size) {
		FUNC4(ipbmap, RDWRLOCK_DMAP);

		rc = FUNC11(bmp, nblocks, l2nb, results);

		goto write_unlock;
	}

	/*
	 * If no hint, let dbNextAG recommend an allocation group
	 */
	if (hint == 0)
		goto pref_ag;

	/* we would like to allocate close to the hint.  adjust the
	 * hint to the block following the hint since the allocators
	 * will start looking for free space starting at this point.
	 */
	blkno = hint + 1;

	if (blkno >= bmp->db_mapsize)
		goto pref_ag;

	agno = blkno >> bmp->db_agl2size;

	/* check if blkno crosses over into a new allocation group.
	 * if so, check if we should allow allocations within this
	 * allocation group.
	 */
	if ((blkno & (bmp->db_agsize - 1)) == 0)
		/* check if the AG is currently being written to.
		 * if so, call dbNextAG() to find a non-busy
		 * AG with sufficient free space.
		 */
		if (FUNC9(&bmp->db_active[agno]))
			goto pref_ag;

	/* check if the allocation request size can be satisfied from a
	 * single dmap.  if so, try to allocate from the dmap containing
	 * the hint using a tiered strategy.
	 */
	if (nblocks <= BPERDMAP) {
		FUNC2(ipbmap, RDWRLOCK_DMAP);

		/* get the buffer for the dmap containing the hint.
		 */
		rc = -EIO;
		lblkno = FUNC1(blkno, bmp->db_l2nbperpage);
		mp = FUNC18(ipbmap, lblkno, PSIZE, 0);
		if (mp == NULL)
			goto read_unlock;

		dp = (struct dmap *) mp->data;

		/* first, try to satisfy the allocation request with the
		 * blocks beginning at the hint.
		 */
		if ((rc = FUNC14(bmp, dp, blkno, (int) nblocks))
		    != -ENOSPC) {
			if (rc == 0) {
				*results = blkno;
				FUNC17(mp);
			}

			FUNC19(mp);
			goto read_unlock;
		}

		writers = FUNC9(&bmp->db_active[agno]);
		if ((writers > 1) ||
		    ((writers == 1) && (FUNC6(ip)->active_ag != agno))) {
			/*
			 * Someone else is writing in this allocation
			 * group.  To avoid fragmenting, try another ag
			 */
			FUNC19(mp);
			FUNC3(ipbmap);
			goto pref_ag;
		}

		/* next, try to satisfy the allocation request with blocks
		 * near the hint.
		 */
		if ((rc =
		     FUNC13(bmp, dp, blkno, (int) nblocks, l2nb, results))
		    != -ENOSPC) {
			if (rc == 0)
				FUNC17(mp);

			FUNC19(mp);
			goto read_unlock;
		}

		/* try to satisfy the allocation request with blocks within
		 * the same dmap as the hint.
		 */
		if ((rc = FUNC12(bmp, dp, (int) nblocks, l2nb, results))
		    != -ENOSPC) {
			if (rc == 0)
				FUNC17(mp);

			FUNC19(mp);
			goto read_unlock;
		}

		FUNC19(mp);
		FUNC3(ipbmap);
	}

	/* try to satisfy the allocation request with blocks within
	 * the same allocation group as the hint.
	 */
	FUNC4(ipbmap, RDWRLOCK_DMAP);
	if ((rc = FUNC10(bmp, agno, nblocks, l2nb, results)) != -ENOSPC)
		goto write_unlock;

	FUNC5(ipbmap);


      pref_ag:
	/*
	 * Let dbNextAG recommend a preferred allocation group
	 */
	agno = FUNC15(ipbmap);
	FUNC4(ipbmap, RDWRLOCK_DMAP);

	/* Try to allocate within this allocation group.  if that fails, try to
	 * allocate anywhere in the map.
	 */
	if ((rc = FUNC10(bmp, agno, nblocks, l2nb, results)) == -ENOSPC)
		rc = FUNC11(bmp, nblocks, l2nb, results);

      write_unlock:
	FUNC5(ipbmap);

	return (rc);

      read_unlock:
	FUNC3(ipbmap);

	return (rc);
}