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
struct xfs_scrub {int /*<<< orphan*/  sick_mask; int /*<<< orphan*/  mp; int /*<<< orphan*/  ip; TYPE_1__* sm; } ;
struct xfs_perag {int dummy; } ;
struct TYPE_4__ {int group; } ;
struct TYPE_3__ {int sm_flags; size_t sm_type; int /*<<< orphan*/  sm_agno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XFS_SCRUB_OFLAG_CORRUPT ; 
#define  XHG_AG 131 
#define  XHG_FS 130 
#define  XHG_INO 129 
#define  XHG_RT 128 
 TYPE_2__* type_to_health_flag ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_perag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_perag*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xfs_perag* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_perag*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(
	struct xfs_scrub	*sc)
{
	struct xfs_perag	*pag;
	bool			bad;

	if (!sc->sick_mask)
		return;

	bad = (sc->sm->sm_flags & XFS_SCRUB_OFLAG_CORRUPT);
	switch (type_to_health_flag[sc->sm->sm_type].group) {
	case XHG_AG:
		pag = FUNC7(sc->mp, sc->sm->sm_agno);
		if (bad)
			FUNC2(pag, sc->sick_mask);
		else
			FUNC1(pag, sc->sick_mask);
		FUNC8(pag);
		break;
	case XHG_INO:
		if (!sc->ip)
			return;
		if (bad)
			FUNC6(sc->ip, sc->sick_mask);
		else
			FUNC5(sc->ip, sc->sick_mask);
		break;
	case XHG_FS:
		if (bad)
			FUNC4(sc->mp, sc->sick_mask);
		else
			FUNC3(sc->mp, sc->sick_mask);
		break;
	case XHG_RT:
		if (bad)
			FUNC10(sc->mp, sc->sick_mask);
		else
			FUNC9(sc->mp, sc->sick_mask);
		break;
	default:
		FUNC0(0);
		break;
	}
}