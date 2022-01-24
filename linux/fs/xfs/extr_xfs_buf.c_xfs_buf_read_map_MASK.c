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
struct xfs_buf {int b_flags; struct xfs_buf_ops const* b_ops; } ;
typedef  struct xfs_buf xfs_buf_t ;
typedef  int xfs_buf_flags_t ;
struct xfs_buftarg {int /*<<< orphan*/  bt_mount; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XBF_ASYNC ; 
 int XBF_DONE ; 
 int XBF_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xb_get_read ; 
 struct xfs_buf* FUNC4 (struct xfs_buftarg*,struct xfs_buf_map*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_buf*,struct xfs_buf_ops const*) ; 

xfs_buf_t *
FUNC7(
	struct xfs_buftarg	*target,
	struct xfs_buf_map	*map,
	int			nmaps,
	xfs_buf_flags_t		flags,
	const struct xfs_buf_ops *ops)
{
	struct xfs_buf		*bp;

	flags |= XBF_READ;

	bp = FUNC4(target, map, nmaps, flags);
	if (!bp)
		return NULL;

	FUNC3(bp, flags, _RET_IP_);

	if (!(bp->b_flags & XBF_DONE)) {
		FUNC1(target->bt_mount, xb_get_read);
		bp->b_ops = ops;
		FUNC2(bp, flags);
		return bp;
	}

	FUNC6(bp, ops);

	if (flags & XBF_ASYNC) {
		/*
		 * Read ahead call which is already satisfied,
		 * drop the buffer
		 */
		FUNC5(bp);
		return NULL;
	}

	/* We do not want read in the flags */
	bp->b_flags &= ~XBF_READ;
	FUNC0(bp->b_ops != NULL || ops == NULL);
	return bp;
}