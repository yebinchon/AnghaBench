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
typedef  int /*<<< orphan*/  xfs_extlen_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct TYPE_2__ {int /*<<< orphan*/  bno_cur; } ;
struct xfs_scrub {TYPE_1__ sa; int /*<<< orphan*/  sm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_scrub*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

void
FUNC4(
	struct xfs_scrub	*sc,
	xfs_agblock_t		agbno,
	xfs_extlen_t		len)
{
	bool			is_freesp;
	int			error;

	if (!sc->sa.bno_cur || FUNC2(sc->sm))
		return;

	error = FUNC3(sc->sa.bno_cur, agbno, len, &is_freesp);
	if (!FUNC1(sc, &error, &sc->sa.bno_cur))
		return;
	if (is_freesp)
		FUNC0(sc, sc->sa.bno_cur, 0);
}