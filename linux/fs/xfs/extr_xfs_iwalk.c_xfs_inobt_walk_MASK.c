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
typedef  int /*<<< orphan*/  xfs_inobt_walk_fn ;
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_iwalk_ag {void* data; int /*<<< orphan*/  startino; int /*<<< orphan*/  pwork; int /*<<< orphan*/  sz_recs; int /*<<< orphan*/  inobt_walk_fn; struct xfs_trans* tp; struct xfs_mount* mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int XFS_INOBT_WALK_FLAGS_ALL ; 
 unsigned int XFS_INOBT_WALK_SAME_AG ; 
 scalar_t__ FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_PWORK_SINGLE_THREADED ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (struct xfs_iwalk_ag*) ; 
 int FUNC5 (struct xfs_iwalk_ag*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_iwalk_ag*) ; 

int
FUNC7(
	struct xfs_mount	*mp,
	struct xfs_trans	*tp,
	xfs_ino_t		startino,
	unsigned int		flags,
	xfs_inobt_walk_fn	inobt_walk_fn,
	unsigned int		inobt_records,
	void			*data)
{
	struct xfs_iwalk_ag	iwag = {
		.mp		= mp,
		.tp		= tp,
		.inobt_walk_fn	= inobt_walk_fn,
		.data		= data,
		.startino	= startino,
		.sz_recs	= FUNC3(inobt_records),
		.pwork		= XFS_PWORK_SINGLE_THREADED,
	};
	xfs_agnumber_t		agno = FUNC2(mp, startino);
	int			error;

	FUNC0(agno < mp->m_sb.sb_agcount);
	FUNC0(!(flags & ~XFS_INOBT_WALK_FLAGS_ALL));

	error = FUNC5(&iwag);
	if (error)
		return error;

	for (; agno < mp->m_sb.sb_agcount; agno++) {
		error = FUNC4(&iwag);
		if (error)
			break;
		iwag.startino = FUNC1(mp, agno + 1, 0);
		if (flags & XFS_INOBT_WALK_SAME_AG)
			break;
	}

	FUNC6(&iwag);
	return error;
}