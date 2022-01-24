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
typedef  int /*<<< orphan*/  uint ;
struct xfs_mount {int /*<<< orphan*/  m_quotainfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFS_AGITER_INEW_WAIT ; 
 int /*<<< orphan*/  xfs_dqrele_inode ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(
	struct xfs_mount *mp,
	uint		 flags)
{
	FUNC0(mp->m_quotainfo);
	FUNC1(mp, xfs_dqrele_inode, flags, NULL,
				    XFS_AGITER_INEW_WAIT);
}