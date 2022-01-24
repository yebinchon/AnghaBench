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
struct xfs_buf {struct xfs_buf_log_item* b_log_item; int /*<<< orphan*/  b_error; struct xfs_trans* b_transp; int /*<<< orphan*/  b_flags; } ;
typedef  struct xfs_buf xfs_buf_t ;
typedef  int /*<<< orphan*/  xfs_buf_flags_t ;
struct xfs_trans {int /*<<< orphan*/  t_mountp; } ;
struct xfs_buftarg {int dummy; } ;
struct xfs_buf_map {int dummy; } ;
struct xfs_buf_log_item {int /*<<< orphan*/  bli_recur; int /*<<< orphan*/  bli_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XBF_DONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_trans*,struct xfs_buf*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf_log_item*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf_log_item*) ; 
 struct xfs_buf* FUNC6 (struct xfs_buftarg*,struct xfs_buf_map*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_buf*) ; 
 struct xfs_buf* FUNC9 (struct xfs_trans*,struct xfs_buftarg*,struct xfs_buf_map*,int) ; 

struct xfs_buf *
FUNC10(
	struct xfs_trans	*tp,
	struct xfs_buftarg	*target,
	struct xfs_buf_map	*map,
	int			nmaps,
	xfs_buf_flags_t		flags)
{
	xfs_buf_t		*bp;
	struct xfs_buf_log_item	*bip;

	if (!tp)
		return FUNC6(target, map, nmaps, flags);

	/*
	 * If we find the buffer in the cache with this transaction
	 * pointer in its b_fsprivate2 field, then we know we already
	 * have it locked.  In this case we just increment the lock
	 * recursion count and return the buffer to the caller.
	 */
	bp = FUNC9(tp, target, map, nmaps);
	if (bp != NULL) {
		FUNC0(FUNC7(bp));
		if (FUNC1(tp->t_mountp)) {
			FUNC8(bp);
			bp->b_flags |= XBF_DONE;
		}

		FUNC0(bp->b_transp == tp);
		bip = bp->b_log_item;
		FUNC0(bip != NULL);
		FUNC0(FUNC3(&bip->bli_refcount) > 0);
		bip->bli_recur++;
		FUNC5(bip);
		return bp;
	}

	bp = FUNC6(target, map, nmaps, flags);
	if (bp == NULL) {
		return NULL;
	}

	FUNC0(!bp->b_error);

	FUNC2(tp, bp, 1);
	FUNC4(bp->b_log_item);
	return bp;
}