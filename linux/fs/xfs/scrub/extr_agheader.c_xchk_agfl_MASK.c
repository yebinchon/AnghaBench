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
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct TYPE_4__ {int /*<<< orphan*/  agf_bp; int /*<<< orphan*/  agfl_bp; int /*<<< orphan*/  agi_bp; int /*<<< orphan*/  agno; } ;
struct xfs_scrub {TYPE_2__ sa; int /*<<< orphan*/  mp; TYPE_1__* sm; } ;
struct xfs_agf {int /*<<< orphan*/  agf_flcount; } ;
struct xchk_agfl_info {unsigned int sz_entries; scalar_t__* entries; unsigned int nr_entries; struct xfs_scrub* sc; } ;
typedef  int /*<<< orphan*/  sai ;
struct TYPE_3__ {int sm_flags; int /*<<< orphan*/  sm_agno; } ;

/* Variables and functions */
 int ECANCELED ; 
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_MAYFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xfs_agf* FUNC1 (int /*<<< orphan*/ ) ; 
 int XFS_SCRUB_OFLAG_CORRUPT ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xchk_agfl_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xchk_agblock_cmp ; 
 int /*<<< orphan*/  xchk_agfl_block ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_scrub*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct xfs_agf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xchk_agfl_info*) ; 

int
FUNC14(
	struct xfs_scrub	*sc)
{
	struct xchk_agfl_info	sai;
	struct xfs_agf		*agf;
	xfs_agnumber_t		agno;
	unsigned int		agflcount;
	unsigned int		i;
	int			error;

	agno = sc->sa.agno = sc->sm->sm_agno;
	error = FUNC7(sc, agno, &sc->sa.agi_bp,
			&sc->sa.agf_bp, &sc->sa.agfl_bp);
	if (!FUNC11(sc, agno, FUNC0(sc->mp), &error))
		goto out;
	if (!sc->sa.agf_bp)
		return -EFSCORRUPTED;
	FUNC10(sc, sc->sa.agfl_bp);

	FUNC8(sc);

	if (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT)
		goto out;

	/* Allocate buffer to ensure uniqueness of AGFL entries. */
	agf = FUNC1(sc->sa.agf_bp);
	agflcount = FUNC2(agf->agf_flcount);
	if (agflcount > FUNC12(sc->mp)) {
		FUNC9(sc, sc->sa.agf_bp);
		goto out;
	}
	FUNC5(&sai, 0, sizeof(sai));
	sai.sc = sc;
	sai.sz_entries = agflcount;
	sai.entries = FUNC4(sizeof(xfs_agblock_t) * agflcount,
			KM_MAYFAIL);
	if (!sai.entries) {
		error = -ENOMEM;
		goto out;
	}

	/* Check the blocks in the AGFL. */
	error = FUNC13(sc->mp, FUNC1(sc->sa.agf_bp),
			sc->sa.agfl_bp, xchk_agfl_block, &sai);
	if (error == -ECANCELED) {
		error = 0;
		goto out_free;
	}
	if (error)
		goto out_free;

	if (agflcount != sai.nr_entries) {
		FUNC9(sc, sc->sa.agf_bp);
		goto out_free;
	}

	/* Sort entries, check for duplicates. */
	FUNC6(sai.entries, sai.nr_entries, sizeof(sai.entries[0]),
			xchk_agblock_cmp, NULL);
	for (i = 1; i < sai.nr_entries; i++) {
		if (sai.entries[i] == sai.entries[i - 1]) {
			FUNC9(sc, sc->sa.agf_bp);
			break;
		}
	}

out_free:
	FUNC3(sai.entries);
out:
	return error;
}