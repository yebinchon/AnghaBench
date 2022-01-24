#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int b_flags; int b_state; int /*<<< orphan*/  b_lock; int /*<<< orphan*/  b_rhash_head; int /*<<< orphan*/  b_lru; TYPE_1__* b_target; int /*<<< orphan*/  b_hold; int /*<<< orphan*/  b_lru_ref; struct xfs_perag* b_pag; } ;
typedef  TYPE_2__ xfs_buf_t ;
struct xfs_perag {int /*<<< orphan*/  pag_buf_lock; int /*<<< orphan*/  pag_buf_hash; } ;
struct TYPE_8__ {int /*<<< orphan*/  bt_lru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XBF_STALE ; 
 int XFS_BSTATE_DISPOSE ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int _XBF_DELWRI_Q ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  xfs_buf_hash_params ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_perag*) ; 

void
FUNC16(
	xfs_buf_t		*bp)
{
	struct xfs_perag	*pag = bp->b_pag;
	bool			release;
	bool			freebuf = false;

	FUNC12(bp, _RET_IP_);

	if (!pag) {
		FUNC0(FUNC6(&bp->b_lru));
		if (FUNC3(&bp->b_hold)) {
			FUNC14(bp);
			FUNC13(bp);
		}
		return;
	}

	FUNC0(FUNC5(&bp->b_hold) > 0);

	/*
	 * We grab the b_lock here first to serialise racing xfs_buf_rele()
	 * calls. The pag_buf_lock being taken on the last reference only
	 * serialises against racing lookups in xfs_buf_find(). IOWs, the second
	 * to last reference we drop here is not serialised against the last
	 * reference until we take bp->b_lock. Hence if we don't grab b_lock
	 * first, the last "release" reference can win the race to the lock and
	 * free the buffer before the second-to-last reference is processed,
	 * leading to a use-after-free scenario.
	 */
	FUNC10(&bp->b_lock);
	release = FUNC2(&bp->b_hold, &pag->pag_buf_lock);
	if (!release) {
		/*
		 * Drop the in-flight state if the buffer is already on the LRU
		 * and it holds the only reference. This is racy because we
		 * haven't acquired the pag lock, but the use of _XBF_IN_FLIGHT
		 * ensures the decrement occurs only once per-buf.
		 */
		if ((FUNC5(&bp->b_hold) == 1) && !FUNC6(&bp->b_lru))
			FUNC1(bp);
		goto out_unlock;
	}

	/* the last reference has been dropped ... */
	FUNC1(bp);
	if (!(bp->b_flags & XBF_STALE) && FUNC5(&bp->b_lru_ref)) {
		/*
		 * If the buffer is added to the LRU take a new reference to the
		 * buffer for the LRU and clear the (now stale) dispose list
		 * state flag
		 */
		if (FUNC7(&bp->b_target->bt_lru, &bp->b_lru)) {
			bp->b_state &= ~XFS_BSTATE_DISPOSE;
			FUNC4(&bp->b_hold);
		}
		FUNC11(&pag->pag_buf_lock);
	} else {
		/*
		 * most of the time buffers will already be removed from the
		 * LRU, so optimise that case by checking for the
		 * XFS_BSTATE_DISPOSE flag indicating the last list the buffer
		 * was on was the disposal list
		 */
		if (!(bp->b_state & XFS_BSTATE_DISPOSE)) {
			FUNC8(&bp->b_target->bt_lru, &bp->b_lru);
		} else {
			FUNC0(FUNC6(&bp->b_lru));
		}

		FUNC0(!(bp->b_flags & _XBF_DELWRI_Q));
		FUNC9(&pag->pag_buf_hash, &bp->b_rhash_head,
				       xfs_buf_hash_params);
		FUNC11(&pag->pag_buf_lock);
		FUNC15(pag);
		freebuf = true;
	}

out_unlock:
	FUNC11(&bp->b_lock);

	if (freebuf)
		FUNC13(bp);
}