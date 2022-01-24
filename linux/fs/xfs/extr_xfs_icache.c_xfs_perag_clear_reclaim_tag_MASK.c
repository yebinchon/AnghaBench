#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfs_perag {int /*<<< orphan*/  pag_agno; scalar_t__ pag_ici_reclaimable; int /*<<< orphan*/  pag_ici_lock; struct xfs_mount* pag_mount; } ;
struct xfs_mount {int /*<<< orphan*/  m_perag_lock; int /*<<< orphan*/  m_perag_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ICI_RECLAIM_TAG ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_mount*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_perag	*pag)
{
	struct xfs_mount	*mp = pag->pag_mount;

	FUNC0(&pag->pag_ici_lock);
	if (--pag->pag_ici_reclaimable)
		return;

	/* clear the reclaim tag from the perag radix tree */
	FUNC2(&mp->m_perag_lock);
	FUNC1(&mp->m_perag_tree, pag->pag_agno,
			     XFS_ICI_RECLAIM_TAG);
	FUNC3(&mp->m_perag_lock);
	FUNC4(mp, pag->pag_agno, -1, _RET_IP_);
}