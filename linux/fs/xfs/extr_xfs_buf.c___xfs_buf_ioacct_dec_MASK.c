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
struct xfs_buf {int b_state; TYPE_1__* b_target; int /*<<< orphan*/  b_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  bt_io_count; } ;

/* Variables and functions */
 int XFS_BSTATE_IN_FLIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC2(
	struct xfs_buf	*bp)
{
	FUNC0(&bp->b_lock);

	if (bp->b_state & XFS_BSTATE_IN_FLIGHT) {
		bp->b_state &= ~XFS_BSTATE_IN_FLIGHT;
		FUNC1(&bp->b_target->bt_io_count);
	}
}