#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_failaddr_t ;
struct xfs_scrub {TYPE_2__* sm; } ;
struct xfs_buf {int /*<<< orphan*/  b_bn; TYPE_1__* b_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  sm_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* verify_struct ) (struct xfs_buf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  XFS_SCRUB_OFLAG_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_scrub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_scrub*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_scrub*) ; 

void
FUNC4(
	struct xfs_scrub	*sc,
	struct xfs_buf		*bp)
{
	xfs_failaddr_t		fa;

	if (bp->b_ops == NULL) {
		FUNC2(sc, bp);
		return;
	}
	if (bp->b_ops->verify_struct == NULL) {
		FUNC3(sc);
		return;
	}
	fa = bp->b_ops->verify_struct(bp);
	if (!fa)
		return;
	sc->sm->sm_flags |= XFS_SCRUB_OFLAG_CORRUPT;
	FUNC1(sc, bp->b_bn, fa);
}