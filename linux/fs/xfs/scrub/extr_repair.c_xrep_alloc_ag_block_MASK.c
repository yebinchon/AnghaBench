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
typedef  scalar_t__ xfs_fsblock_t ;
typedef  int /*<<< orphan*/  xfs_agblock_t ;
struct TYPE_2__ {int /*<<< orphan*/  agno; int /*<<< orphan*/  agf_bp; } ;
struct xfs_scrub {TYPE_1__ sa; int /*<<< orphan*/  mp; int /*<<< orphan*/  tp; } ;
struct xfs_owner_info {int dummy; } ;
struct xfs_alloc_arg {scalar_t__ fsbno; int minlen; int maxlen; int prod; int resv; int len; int /*<<< orphan*/  type; int /*<<< orphan*/  mp; struct xfs_owner_info oinfo; int /*<<< orphan*/  tp; int /*<<< orphan*/  member_0; } ;
typedef  enum xfs_ag_resv_type { ____Placeholder_xfs_ag_resv_type } xfs_ag_resv_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  NULLAGBLOCK ; 
 scalar_t__ NULLFSBLOCK ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  XFS_AG_RESV_AGFL 129 
#define  XFS_AG_RESV_RMAPBT 128 
 int /*<<< orphan*/  XFS_ALLOCTYPE_THIS_AG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct xfs_alloc_arg*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int
FUNC6(
	struct xfs_scrub		*sc,
	const struct xfs_owner_info	*oinfo,
	xfs_fsblock_t			*fsbno,
	enum xfs_ag_resv_type		resv)
{
	struct xfs_alloc_arg		args = {0};
	xfs_agblock_t			bno;
	int				error;

	switch (resv) {
	case XFS_AG_RESV_AGFL:
	case XFS_AG_RESV_RMAPBT:
		error = FUNC3(sc->tp, sc->sa.agf_bp, &bno, 1);
		if (error)
			return error;
		if (bno == NULLAGBLOCK)
			return -ENOSPC;
		FUNC5(sc->mp, sc->sa.agno, bno,
				1, false);
		*fsbno = FUNC1(sc->mp, sc->sa.agno, bno);
		if (resv == XFS_AG_RESV_RMAPBT)
			FUNC2(sc->mp, sc->sa.agno);
		return 0;
	default:
		break;
	}

	args.tp = sc->tp;
	args.mp = sc->mp;
	args.oinfo = *oinfo;
	args.fsbno = FUNC1(args.mp, sc->sa.agno, 0);
	args.minlen = 1;
	args.maxlen = 1;
	args.prod = 1;
	args.type = XFS_ALLOCTYPE_THIS_AG;
	args.resv = resv;

	error = FUNC4(&args);
	if (error)
		return error;
	if (args.fsbno == NULLFSBLOCK)
		return -ENOSPC;
	FUNC0(args.len == 1);
	*fsbno = args.fsbno;

	return 0;
}