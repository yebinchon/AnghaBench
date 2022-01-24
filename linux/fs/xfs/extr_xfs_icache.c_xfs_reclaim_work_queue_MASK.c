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
struct xfs_mount {int /*<<< orphan*/  m_reclaim_work; int /*<<< orphan*/  m_reclaim_workqueue; int /*<<< orphan*/  m_perag_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_ICI_RECLAIM_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int xfs_syncd_centisecs ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_mount        *mp)
{

	FUNC3();
	if (FUNC2(&mp->m_perag_tree, XFS_ICI_RECLAIM_TAG)) {
		FUNC1(mp->m_reclaim_workqueue, &mp->m_reclaim_work,
			FUNC0(xfs_syncd_centisecs / 6 * 10));
	}
	FUNC4();
}