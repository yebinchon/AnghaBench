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
typedef  int xfs_buf_flags_t ;
struct xfs_buftarg {int /*<<< orphan*/  bt_mount; } ;
struct xfs_buf_map {scalar_t__ bm_len; int /*<<< orphan*/  bm_bn; } ;
struct xfs_buf {int b_flags; int /*<<< orphan*/  b_mount; int /*<<< orphan*/  b_waiters; int /*<<< orphan*/  b_pin_count; scalar_t__ b_length; TYPE_1__* b_maps; int /*<<< orphan*/  b_bn; struct xfs_buftarg* b_target; int /*<<< orphan*/  b_lock; int /*<<< orphan*/  b_sema; int /*<<< orphan*/  b_li_list; int /*<<< orphan*/  b_list; int /*<<< orphan*/  b_lru; int /*<<< orphan*/  b_iowait; int /*<<< orphan*/  b_lru_ref; int /*<<< orphan*/  b_hold; } ;
struct TYPE_2__ {scalar_t__ bm_len; int /*<<< orphan*/  bm_bn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_NOFS ; 
 int XBF_ASYNC ; 
 int XBF_READ_AHEAD ; 
 int XBF_TRYLOCK ; 
 int XBF_UNMAPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct xfs_buf*) ; 
 struct xfs_buf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  xb_create ; 
 int FUNC11 (struct xfs_buf*,int) ; 
 int /*<<< orphan*/  xfs_buf_zone ; 

__attribute__((used)) static struct xfs_buf *
FUNC12(
	struct xfs_buftarg	*target,
	struct xfs_buf_map	*map,
	int			nmaps,
	xfs_buf_flags_t		flags)
{
	struct xfs_buf		*bp;
	int			error;
	int			i;

	bp = FUNC6(xfs_buf_zone, KM_NOFS);
	if (FUNC10(!bp))
		return NULL;

	/*
	 * We don't want certain flags to appear in b_flags unless they are
	 * specifically set by later operations on the buffer.
	 */
	flags &= ~(XBF_UNMAPPED | XBF_TRYLOCK | XBF_ASYNC | XBF_READ_AHEAD);

	FUNC2(&bp->b_hold, 1);
	FUNC2(&bp->b_lru_ref, 1);
	FUNC3(&bp->b_iowait);
	FUNC0(&bp->b_lru);
	FUNC0(&bp->b_list);
	FUNC0(&bp->b_li_list);
	FUNC7(&bp->b_sema, 0); /* held, no waiters */
	FUNC8(&bp->b_lock);
	bp->b_target = target;
	bp->b_mount = target->bt_mount;
	bp->b_flags = flags;

	/*
	 * Set length and io_length to the same value initially.
	 * I/O routines should use io_length, which will be the same in
	 * most cases but may be reset (e.g. XFS recovery).
	 */
	error = FUNC11(bp, nmaps);
	if (error)  {
		FUNC5(xfs_buf_zone, bp);
		return NULL;
	}

	bp->b_bn = map[0].bm_bn;
	bp->b_length = 0;
	for (i = 0; i < nmaps; i++) {
		bp->b_maps[i].bm_bn = map[i].bm_bn;
		bp->b_maps[i].bm_len = map[i].bm_len;
		bp->b_length += map[i].bm_len;
	}

	FUNC2(&bp->b_pin_count, 0);
	FUNC4(&bp->b_waiters);

	FUNC1(bp->b_mount, xb_create);
	FUNC9(bp, _RET_IP_);

	return bp;
}