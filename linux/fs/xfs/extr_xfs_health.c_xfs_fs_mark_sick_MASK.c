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
struct xfs_mount {unsigned int m_fs_sick; unsigned int m_fs_checked; int /*<<< orphan*/  m_sb_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int XFS_SICK_FS_PRIMARY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,unsigned int) ; 

void
FUNC4(
	struct xfs_mount	*mp,
	unsigned int		mask)
{
	FUNC0(!(mask & ~XFS_SICK_FS_PRIMARY));
	FUNC3(mp, mask);

	FUNC1(&mp->m_sb_lock);
	mp->m_fs_sick |= mask;
	mp->m_fs_checked |= mask;
	FUNC2(&mp->m_sb_lock);
}