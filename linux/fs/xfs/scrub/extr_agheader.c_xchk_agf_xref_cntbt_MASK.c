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
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct TYPE_2__ {int /*<<< orphan*/  agf_bp; int /*<<< orphan*/  cnt_cur; } ;
struct xfs_scrub {TYPE_1__ sa; } ;
struct xfs_agf {scalar_t__ agf_freeblks; int /*<<< orphan*/  agf_longest; } ;

/* Variables and functions */
 struct xfs_agf* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_scrub*,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int*) ; 

__attribute__((used)) static inline void
FUNC7(
	struct xfs_scrub	*sc)
{
	struct xfs_agf		*agf = FUNC0(sc->sa.agf_bp);
	xfs_agblock_t		agbno;
	xfs_extlen_t		blocks;
	int			have;
	int			error;

	if (!sc->sa.cnt_cur)
		return;

	/* Any freespace at all? */
	error = FUNC6(sc->sa.cnt_cur, 0, -1U, &have);
	if (!FUNC4(sc, &error, &sc->sa.cnt_cur))
		return;
	if (!have) {
		if (agf->agf_freeblks != FUNC2(0))
			FUNC3(sc, sc->sa.agf_bp);
		return;
	}

	/* Check agf_longest */
	error = FUNC5(sc->sa.cnt_cur, &agbno, &blocks, &have);
	if (!FUNC4(sc, &error, &sc->sa.cnt_cur))
		return;
	if (!have || blocks != FUNC1(agf->agf_longest))
		FUNC3(sc, sc->sa.agf_bp);
}