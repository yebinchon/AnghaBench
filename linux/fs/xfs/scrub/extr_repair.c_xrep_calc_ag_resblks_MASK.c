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
typedef  scalar_t__ xfs_extlen_t ;
typedef  int xfs_agino_t ;
struct xfs_scrub_metadata {int sm_flags; int /*<<< orphan*/  sm_agno; } ;
struct xfs_scrub {struct xfs_scrub_metadata* sm; struct xfs_mount* mp; } ;
struct xfs_perag {int pagi_count; scalar_t__ pagi_init; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  agf_freeblks; int /*<<< orphan*/  agf_length; } ;

/* Variables and functions */
 scalar_t__ NULLAGBLOCK ; 
 int NULLAGINO ; 
 TYPE_1__* FUNC0 (struct xfs_buf*) ; 
 int XFS_INODES_PER_CHUNK ; 
 int XFS_INODES_PER_HOLEMASK_BIT ; 
 int XFS_SCRUB_IFLAG_REPAIR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC7 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 int FUNC8 (struct xfs_mount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_buf*) ; 
 int FUNC10 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct xfs_buf**) ; 
 scalar_t__ FUNC11 (struct xfs_mount*,int) ; 
 struct xfs_perag* FUNC12 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_perag*) ; 
 scalar_t__ FUNC14 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct xfs_mount*,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct xfs_mount*,int /*<<< orphan*/ ,int) ; 

xfs_extlen_t
FUNC21(
	struct xfs_scrub		*sc)
{
	struct xfs_mount		*mp = sc->mp;
	struct xfs_scrub_metadata	*sm = sc->sm;
	struct xfs_perag		*pag;
	struct xfs_buf			*bp;
	xfs_agino_t			icount = NULLAGINO;
	xfs_extlen_t			aglen = NULLAGBLOCK;
	xfs_extlen_t			usedlen;
	xfs_extlen_t			freelen;
	xfs_extlen_t			bnobt_sz;
	xfs_extlen_t			inobt_sz;
	xfs_extlen_t			rmapbt_sz;
	xfs_extlen_t			refcbt_sz;
	int				error;

	if (!(sm->sm_flags & XFS_SCRUB_IFLAG_REPAIR))
		return 0;

	pag = FUNC12(mp, sm->sm_agno);
	if (pag->pagi_init) {
		/* Use in-core icount if possible. */
		icount = pag->pagi_count;
	} else {
		/* Try to get the actual counters from disk. */
		error = FUNC10(mp, NULL, sm->sm_agno, &bp);
		if (!error) {
			icount = pag->pagi_count;
			FUNC9(bp);
		}
	}

	/* Now grab the block counters from the AGF. */
	error = FUNC7(mp, NULL, sm->sm_agno, 0, &bp);
	if (!error) {
		aglen = FUNC1(FUNC0(bp)->agf_length);
		freelen = FUNC1(FUNC0(bp)->agf_freeblks);
		usedlen = aglen - freelen;
		FUNC9(bp);
	}
	FUNC13(pag);

	/* If the icount is impossible, make some worst-case assumptions. */
	if (icount == NULLAGINO ||
	    !FUNC20(mp, sm->sm_agno, icount)) {
		xfs_agino_t	first, last;

		FUNC6(mp, sm->sm_agno, &first, &last);
		icount = last - first + 1;
	}

	/* If the block counts are impossible, make worst-case assumptions. */
	if (aglen == NULLAGBLOCK ||
	    aglen != FUNC5(mp, sm->sm_agno) ||
	    freelen >= aglen) {
		aglen = FUNC5(mp, sm->sm_agno);
		freelen = aglen;
		usedlen = aglen;
	}

	FUNC3(mp, sm->sm_agno, icount, aglen,
			freelen, usedlen);

	/*
	 * Figure out how many blocks we'd need worst case to rebuild
	 * each type of btree.  Note that we can only rebuild the
	 * bnobt/cntbt or inobt/finobt as pairs.
	 */
	bnobt_sz = 2 * FUNC8(mp, freelen);
	if (FUNC19(&mp->m_sb))
		inobt_sz = FUNC11(mp, icount /
				XFS_INODES_PER_HOLEMASK_BIT);
	else
		inobt_sz = FUNC11(mp, icount /
				XFS_INODES_PER_CHUNK);
	if (FUNC16(&mp->m_sb))
		inobt_sz *= 2;
	if (FUNC17(&mp->m_sb))
		refcbt_sz = FUNC14(mp, usedlen);
	else
		refcbt_sz = 0;
	if (FUNC18(&mp->m_sb)) {
		/*
		 * Guess how many blocks we need to rebuild the rmapbt.
		 * For non-reflink filesystems we can't have more records than
		 * used blocks.  However, with reflink it's possible to have
		 * more than one rmap record per AG block.  We don't know how
		 * many rmaps there could be in the AG, so we start off with
		 * what we hope is an generous over-estimation.
		 */
		if (FUNC17(&mp->m_sb))
			rmapbt_sz = FUNC15(mp,
					(unsigned long long)aglen * 2);
		else
			rmapbt_sz = FUNC15(mp, usedlen);
	} else {
		rmapbt_sz = 0;
	}

	FUNC4(mp, sm->sm_agno, bnobt_sz,
			inobt_sz, rmapbt_sz, refcbt_sz);

	return FUNC2(FUNC2(bnobt_sz, inobt_sz), FUNC2(rmapbt_sz, refcbt_sz));
}