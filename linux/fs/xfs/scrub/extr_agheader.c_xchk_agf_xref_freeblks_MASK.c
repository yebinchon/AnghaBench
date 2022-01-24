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
struct TYPE_2__ {int /*<<< orphan*/  agf_bp; int /*<<< orphan*/  bno_cur; } ;
struct xfs_scrub {TYPE_1__ sa; } ;
struct xfs_agf {int /*<<< orphan*/  agf_freeblks; } ;

/* Variables and functions */
 struct xfs_agf* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xchk_agf_record_bno_lengths ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_scrub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static inline void
FUNC5(
	struct xfs_scrub	*sc)
{
	struct xfs_agf		*agf = FUNC0(sc->sa.agf_bp);
	xfs_extlen_t		blocks = 0;
	int			error;

	if (!sc->sa.bno_cur)
		return;

	error = FUNC4(sc->sa.bno_cur,
			xchk_agf_record_bno_lengths, &blocks);
	if (!FUNC3(sc, &error, &sc->sa.bno_cur))
		return;
	if (blocks != FUNC1(agf->agf_freeblks))
		FUNC2(sc, sc->sa.agf_bp);
}