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
typedef  int /*<<< orphan*/  xfs_agnumber_t ;
typedef  scalar_t__ xfs_agblock_t ;
struct TYPE_4__ {int /*<<< orphan*/  agf_bp; int /*<<< orphan*/  agfl_bp; int /*<<< orphan*/  agi_bp; int /*<<< orphan*/  agno; } ;
struct xfs_scrub {TYPE_2__ sa; struct xfs_mount* mp; TYPE_1__* sm; } ;
struct xfs_perag {void* pagf_freeblks; void* pagf_flcount; void* pagf_btreeblks; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_agf {int /*<<< orphan*/  agf_btreeblks; int /*<<< orphan*/  agf_flcount; int /*<<< orphan*/  agf_freeblks; int /*<<< orphan*/  agf_fllast; int /*<<< orphan*/  agf_flfirst; int /*<<< orphan*/  agf_refcount_level; int /*<<< orphan*/  agf_refcount_root; int /*<<< orphan*/ * agf_levels; int /*<<< orphan*/ * agf_roots; int /*<<< orphan*/  agf_length; } ;
struct TYPE_3__ {int /*<<< orphan*/  sm_agno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 size_t XFS_BTNUM_BNO ; 
 size_t XFS_BTNUM_CNT ; 
 size_t XFS_BTNUM_RMAP ; 
 int XFS_BTREE_MAXLEVELS ; 
 struct xfs_agf* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_scrub*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC8 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct xfs_mount*) ; 
 struct xfs_perag* FUNC10 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_perag*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_mount*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC15(
	struct xfs_scrub	*sc)
{
	struct xfs_mount	*mp = sc->mp;
	struct xfs_agf		*agf;
	struct xfs_perag	*pag;
	xfs_agnumber_t		agno;
	xfs_agblock_t		agbno;
	xfs_agblock_t		eoag;
	xfs_agblock_t		agfl_first;
	xfs_agblock_t		agfl_last;
	xfs_agblock_t		agfl_count;
	xfs_agblock_t		fl_count;
	int			level;
	int			error = 0;

	agno = sc->sa.agno = sc->sm->sm_agno;
	error = FUNC3(sc, agno, &sc->sa.agi_bp,
			&sc->sa.agf_bp, &sc->sa.agfl_bp);
	if (!FUNC7(sc, agno, FUNC0(sc->mp), &error))
		goto out;
	FUNC6(sc, sc->sa.agf_bp);

	agf = FUNC1(sc->sa.agf_bp);

	/* Check the AG length */
	eoag = FUNC2(agf->agf_length);
	if (eoag != FUNC8(mp, agno))
		FUNC5(sc, sc->sa.agf_bp);

	/* Check the AGF btree roots and levels */
	agbno = FUNC2(agf->agf_roots[XFS_BTNUM_BNO]);
	if (!FUNC14(mp, agno, agbno))
		FUNC5(sc, sc->sa.agf_bp);

	agbno = FUNC2(agf->agf_roots[XFS_BTNUM_CNT]);
	if (!FUNC14(mp, agno, agbno))
		FUNC5(sc, sc->sa.agf_bp);

	level = FUNC2(agf->agf_levels[XFS_BTNUM_BNO]);
	if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
		FUNC5(sc, sc->sa.agf_bp);

	level = FUNC2(agf->agf_levels[XFS_BTNUM_CNT]);
	if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
		FUNC5(sc, sc->sa.agf_bp);

	if (FUNC13(&mp->m_sb)) {
		agbno = FUNC2(agf->agf_roots[XFS_BTNUM_RMAP]);
		if (!FUNC14(mp, agno, agbno))
			FUNC5(sc, sc->sa.agf_bp);

		level = FUNC2(agf->agf_levels[XFS_BTNUM_RMAP]);
		if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
			FUNC5(sc, sc->sa.agf_bp);
	}

	if (FUNC12(&mp->m_sb)) {
		agbno = FUNC2(agf->agf_refcount_root);
		if (!FUNC14(mp, agno, agbno))
			FUNC5(sc, sc->sa.agf_bp);

		level = FUNC2(agf->agf_refcount_level);
		if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
			FUNC5(sc, sc->sa.agf_bp);
	}

	/* Check the AGFL counters */
	agfl_first = FUNC2(agf->agf_flfirst);
	agfl_last = FUNC2(agf->agf_fllast);
	agfl_count = FUNC2(agf->agf_flcount);
	if (agfl_last > agfl_first)
		fl_count = agfl_last - agfl_first + 1;
	else
		fl_count = FUNC9(mp) - agfl_first + agfl_last + 1;
	if (agfl_count != 0 && fl_count != agfl_count)
		FUNC5(sc, sc->sa.agf_bp);

	/* Do the incore counters match? */
	pag = FUNC10(mp, agno);
	if (pag->pagf_freeblks != FUNC2(agf->agf_freeblks))
		FUNC5(sc, sc->sa.agf_bp);
	if (pag->pagf_flcount != FUNC2(agf->agf_flcount))
		FUNC5(sc, sc->sa.agf_bp);
	if (pag->pagf_btreeblks != FUNC2(agf->agf_btreeblks))
		FUNC5(sc, sc->sa.agf_bp);
	FUNC11(pag);

	FUNC4(sc);
out:
	return error;
}