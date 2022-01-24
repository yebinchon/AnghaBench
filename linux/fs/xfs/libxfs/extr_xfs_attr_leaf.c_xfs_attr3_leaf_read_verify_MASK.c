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
typedef  scalar_t__ xfs_failaddr_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFSBADCRC ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_ATTR3_LEAF_CRC_OFF ; 
 scalar_t__ __this_address ; 
 scalar_t__ FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_buf		*bp)
{
	struct xfs_mount	*mp = bp->b_mount;
	xfs_failaddr_t		fa;

	if (FUNC2(&mp->m_sb) &&
	     !FUNC1(bp, XFS_ATTR3_LEAF_CRC_OFF))
		FUNC3(bp, -EFSBADCRC, __this_address);
	else {
		fa = FUNC0(bp);
		if (fa)
			FUNC3(bp, -EFSCORRUPTED, fa);
	}
}