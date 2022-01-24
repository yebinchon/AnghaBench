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
typedef  int /*<<< orphan*/  xfs_failaddr_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; } ;
struct xfs_buf {struct xfs_mount* b_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFSBADCRC ; 
 int /*<<< orphan*/  EFSCORRUPTED ; 
 int /*<<< orphan*/  XFS_AGF_CRC_OFF ; 
 int /*<<< orphan*/  XFS_ERRTAG_ALLOC_READ_AGF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __this_address ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(
	struct xfs_buf	*bp)
{
	struct xfs_mount *mp = bp->b_mount;
	xfs_failaddr_t	fa;

	if (FUNC3(&mp->m_sb) &&
	    !FUNC2(bp, XFS_AGF_CRC_OFF))
		FUNC4(bp, -EFSBADCRC, __this_address);
	else {
		fa = FUNC1(bp);
		if (FUNC0(fa, mp, XFS_ERRTAG_ALLOC_READ_AGF))
			FUNC4(bp, -EFSCORRUPTED, fa);
	}
}