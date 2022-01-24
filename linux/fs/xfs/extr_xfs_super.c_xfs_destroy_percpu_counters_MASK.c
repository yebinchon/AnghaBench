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
struct xfs_mount {int /*<<< orphan*/  m_delalloc_blks; int /*<<< orphan*/  m_fdblocks; int /*<<< orphan*/  m_ifree; int /*<<< orphan*/  m_icount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_mount	*mp)
{
	FUNC2(&mp->m_icount);
	FUNC2(&mp->m_ifree);
	FUNC2(&mp->m_fdblocks);
	FUNC0(FUNC1(mp) ||
	       FUNC3(&mp->m_delalloc_blks) == 0);
	FUNC2(&mp->m_delalloc_blks);
}