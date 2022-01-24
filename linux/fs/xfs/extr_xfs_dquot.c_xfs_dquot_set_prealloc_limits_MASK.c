#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_2__ {int /*<<< orphan*/  d_blk_softlimit; int /*<<< orphan*/  d_blk_hardlimit; } ;
struct xfs_dquot {int q_prealloc_hi_wmark; int q_prealloc_lo_wmark; int* q_low_space; TYPE_1__ q_core; } ;

/* Variables and functions */
 size_t XFS_QLOWSP_1_PCNT ; 
 size_t XFS_QLOWSP_3_PCNT ; 
 size_t XFS_QLOWSP_5_PCNT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

void
FUNC2(struct xfs_dquot *dqp)
{
	uint64_t space;

	dqp->q_prealloc_hi_wmark = FUNC0(dqp->q_core.d_blk_hardlimit);
	dqp->q_prealloc_lo_wmark = FUNC0(dqp->q_core.d_blk_softlimit);
	if (!dqp->q_prealloc_lo_wmark) {
		dqp->q_prealloc_lo_wmark = dqp->q_prealloc_hi_wmark;
		FUNC1(dqp->q_prealloc_lo_wmark, 100);
		dqp->q_prealloc_lo_wmark *= 95;
	}

	space = dqp->q_prealloc_hi_wmark;

	FUNC1(space, 100);
	dqp->q_low_space[XFS_QLOWSP_1_PCNT] = space;
	dqp->q_low_space[XFS_QLOWSP_3_PCNT] = space * 3;
	dqp->q_low_space[XFS_QLOWSP_5_PCNT] = space * 5;
}