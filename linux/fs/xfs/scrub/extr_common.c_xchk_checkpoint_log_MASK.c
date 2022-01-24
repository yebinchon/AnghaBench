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
struct xfs_mount {int /*<<< orphan*/  m_ail; } ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_LOG_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xfs_mount*,int /*<<< orphan*/ ) ; 

int
FUNC2(
	struct xfs_mount	*mp)
{
	int			error;

	error = FUNC1(mp, XFS_LOG_SYNC);
	if (error)
		return error;
	FUNC0(mp->m_ail);
	return 0;
}