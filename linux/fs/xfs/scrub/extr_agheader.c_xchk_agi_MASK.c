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
typedef  int xfs_agino_t ;
typedef  scalar_t__ xfs_agblock_t ;
struct TYPE_4__ {int /*<<< orphan*/  agi_bp; int /*<<< orphan*/  agfl_bp; int /*<<< orphan*/  agf_bp; int /*<<< orphan*/  agno; } ;
struct xfs_scrub {TYPE_2__ sa; struct xfs_mount* mp; TYPE_1__* sm; } ;
struct xfs_perag {int pagi_count; int pagi_freecount; } ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_agi {scalar_t__ agi_pad32; int /*<<< orphan*/  agi_freecount; int /*<<< orphan*/  agi_count; int /*<<< orphan*/ * agi_unlinked; int /*<<< orphan*/  agi_dirino; int /*<<< orphan*/  agi_newino; int /*<<< orphan*/  agi_free_level; int /*<<< orphan*/  agi_free_root; int /*<<< orphan*/  agi_level; int /*<<< orphan*/  agi_root; int /*<<< orphan*/  agi_length; } ;
struct TYPE_3__ {int /*<<< orphan*/  sm_agno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_mount*) ; 
 int XFS_AGI_UNLINKED_BUCKETS ; 
 int XFS_BTREE_MAXLEVELS ; 
 struct xfs_agi* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_scrub*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*,int /*<<< orphan*/ ,int*,int*) ; 
 struct xfs_perag* FUNC11 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_perag*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_mount*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_mount*,int /*<<< orphan*/ ,int) ; 

int
FUNC16(
	struct xfs_scrub	*sc)
{
	struct xfs_mount	*mp = sc->mp;
	struct xfs_agi		*agi;
	struct xfs_perag	*pag;
	xfs_agnumber_t		agno;
	xfs_agblock_t		agbno;
	xfs_agblock_t		eoag;
	xfs_agino_t		agino;
	xfs_agino_t		first_agino;
	xfs_agino_t		last_agino;
	xfs_agino_t		icount;
	int			i;
	int			level;
	int			error = 0;

	agno = sc->sa.agno = sc->sm->sm_agno;
	error = FUNC4(sc, agno, &sc->sa.agi_bp,
			&sc->sa.agf_bp, &sc->sa.agfl_bp);
	if (!FUNC8(sc, agno, FUNC0(sc->mp), &error))
		goto out;
	FUNC7(sc, sc->sa.agi_bp);

	agi = FUNC1(sc->sa.agi_bp);

	/* Check the AG length */
	eoag = FUNC2(agi->agi_length);
	if (eoag != FUNC9(mp, agno))
		FUNC6(sc, sc->sa.agi_bp);

	/* Check btree roots and levels */
	agbno = FUNC2(agi->agi_root);
	if (!FUNC14(mp, agno, agbno))
		FUNC6(sc, sc->sa.agi_bp);

	level = FUNC2(agi->agi_level);
	if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
		FUNC6(sc, sc->sa.agi_bp);

	if (FUNC13(&mp->m_sb)) {
		agbno = FUNC2(agi->agi_free_root);
		if (!FUNC14(mp, agno, agbno))
			FUNC6(sc, sc->sa.agi_bp);

		level = FUNC2(agi->agi_free_level);
		if (level <= 0 || level > XFS_BTREE_MAXLEVELS)
			FUNC6(sc, sc->sa.agi_bp);
	}

	/* Check inode counters */
	FUNC10(mp, agno, &first_agino, &last_agino);
	icount = FUNC2(agi->agi_count);
	if (icount > last_agino - first_agino + 1 ||
	    icount < FUNC2(agi->agi_freecount))
		FUNC6(sc, sc->sa.agi_bp);

	/* Check inode pointers */
	agino = FUNC2(agi->agi_newino);
	if (!FUNC15(mp, agno, agino))
		FUNC6(sc, sc->sa.agi_bp);

	agino = FUNC2(agi->agi_dirino);
	if (!FUNC15(mp, agno, agino))
		FUNC6(sc, sc->sa.agi_bp);

	/* Check unlinked inode buckets */
	for (i = 0; i < XFS_AGI_UNLINKED_BUCKETS; i++) {
		agino = FUNC2(agi->agi_unlinked[i]);
		if (!FUNC15(mp, agno, agino))
			FUNC6(sc, sc->sa.agi_bp);
	}

	if (agi->agi_pad32 != FUNC3(0))
		FUNC6(sc, sc->sa.agi_bp);

	/* Do the incore counters match? */
	pag = FUNC11(mp, agno);
	if (pag->pagi_count != FUNC2(agi->agi_count))
		FUNC6(sc, sc->sa.agi_bp);
	if (pag->pagi_freecount != FUNC2(agi->agi_freecount))
		FUNC6(sc, sc->sa.agi_bp);
	FUNC12(pag);

	FUNC5(sc);
out:
	return error;
}