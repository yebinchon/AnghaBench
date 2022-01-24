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
struct xfs_buf {int b_state; int /*<<< orphan*/  b_lock; int /*<<< orphan*/  b_hold; int /*<<< orphan*/  b_lru; TYPE_1__* b_target; int /*<<< orphan*/  b_lru_ref; int /*<<< orphan*/  b_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  bt_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XBF_STALE ; 
 int XFS_BSTATE_DISPOSE ; 
 int /*<<< orphan*/  _XBF_DELWRI_Q ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct xfs_buf*) ; 

void
FUNC9(
	struct xfs_buf	*bp)
{
	FUNC0(FUNC8(bp));

	bp->b_flags |= XBF_STALE;

	/*
	 * Clear the delwri status so that a delwri queue walker will not
	 * flush this buffer to disk now that it is stale. The delwri queue has
	 * a reference to the buffer, so this is safe to do.
	 */
	bp->b_flags &= ~_XBF_DELWRI_Q;

	/*
	 * Once the buffer is marked stale and unlocked, a subsequent lookup
	 * could reset b_flags. There is no guarantee that the buffer is
	 * unaccounted (released to LRU) before that occurs. Drop in-flight
	 * status now to preserve accounting consistency.
	 */
	FUNC6(&bp->b_lock);
	FUNC1(bp);

	FUNC4(&bp->b_lru_ref, 0);
	if (!(bp->b_state & XFS_BSTATE_DISPOSE) &&
	    (FUNC5(&bp->b_target->bt_lru, &bp->b_lru)))
		FUNC2(&bp->b_hold);

	FUNC0(FUNC3(&bp->b_hold) >= 1);
	FUNC7(&bp->b_lock);
}