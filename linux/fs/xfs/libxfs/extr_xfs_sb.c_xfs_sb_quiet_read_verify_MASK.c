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
struct xfs_dsb {scalar_t__ sb_magicnum; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EWRONGFS ; 
 struct xfs_dsb* FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  XFS_SB_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 

__attribute__((used)) static void
FUNC4(
	struct xfs_buf	*bp)
{
	struct xfs_dsb	*dsb = FUNC0(bp);

	if (dsb->sb_magicnum == FUNC1(XFS_SB_MAGIC)) {
		/* XFS filesystem, verify noisily! */
		FUNC3(bp);
		return;
	}
	/* quietly fail */
	FUNC2(bp, -EWRONGFS);
}