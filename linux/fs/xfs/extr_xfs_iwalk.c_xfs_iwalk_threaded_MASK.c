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
typedef  int /*<<< orphan*/  xfs_iwalk_fn ;
typedef  int /*<<< orphan*/  xfs_ino_t ;
typedef  scalar_t__ xfs_agnumber_t ;
struct xfs_pwork_ctl {int dummy; } ;
struct TYPE_2__ {scalar_t__ sb_agcount; } ;
struct xfs_mount {TYPE_1__ m_sb; } ;
struct xfs_iwalk_ag {int /*<<< orphan*/  pwork; int /*<<< orphan*/  sz_recs; int /*<<< orphan*/  startino; void* data; int /*<<< orphan*/  iwalk_fn; struct xfs_mount* mp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int XFS_INOBT_WALK_SAME_AG ; 
 scalar_t__ FUNC2 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 unsigned int XFS_IWALK_FLAGS_ALL ; 
 struct xfs_iwalk_ag* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_iwalk_ag_work ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (struct xfs_pwork_ctl*) ; 
 int FUNC6 (struct xfs_pwork_ctl*) ; 
 unsigned int FUNC7 (struct xfs_mount*) ; 
 int FUNC8 (struct xfs_mount*,struct xfs_pwork_ctl*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_pwork_ctl*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_pwork_ctl*,int /*<<< orphan*/ *) ; 

int
FUNC11(
	struct xfs_mount	*mp,
	xfs_ino_t		startino,
	unsigned int		flags,
	xfs_iwalk_fn		iwalk_fn,
	unsigned int		inode_records,
	bool			polled,
	void			*data)
{
	struct xfs_pwork_ctl	pctl;
	xfs_agnumber_t		agno = FUNC2(mp, startino);
	unsigned int		nr_threads;
	int			error;

	FUNC0(agno < mp->m_sb.sb_agcount);
	FUNC0(!(flags & ~XFS_IWALK_FLAGS_ALL));

	nr_threads = FUNC7(mp);
	error = FUNC8(mp, &pctl, xfs_iwalk_ag_work, "xfs_iwalk",
			nr_threads);
	if (error)
		return error;

	for (; agno < mp->m_sb.sb_agcount; agno++) {
		struct xfs_iwalk_ag	*iwag;

		if (FUNC5(&pctl))
			break;

		iwag = FUNC3(sizeof(struct xfs_iwalk_ag), 0);
		iwag->mp = mp;
		iwag->iwalk_fn = iwalk_fn;
		iwag->data = data;
		iwag->startino = startino;
		iwag->sz_recs = FUNC4(inode_records);
		FUNC10(&pctl, &iwag->pwork);
		startino = FUNC1(mp, agno + 1, 0);
		if (flags & XFS_INOBT_WALK_SAME_AG)
			break;
	}

	if (polled)
		FUNC9(&pctl);
	return FUNC6(&pctl);
}