#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_trans_t ;
struct TYPE_5__ {struct xfs_buf_log_item* b_log_item; int /*<<< orphan*/ * b_transp; } ;
typedef  TYPE_1__ xfs_buf_t ;
struct xfs_mount {TYPE_1__* m_sb_bp; } ;
struct xfs_buf_log_item {int /*<<< orphan*/  bli_recur; int /*<<< orphan*/  bli_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf_log_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf_log_item*) ; 
 TYPE_1__* FUNC5 (struct xfs_mount*) ; 

xfs_buf_t *
FUNC6(
	xfs_trans_t		*tp,
	struct xfs_mount	*mp)
{
	xfs_buf_t		*bp;
	struct xfs_buf_log_item	*bip;

	/*
	 * Default to just trying to lock the superblock buffer
	 * if tp is NULL.
	 */
	if (tp == NULL)
		return FUNC5(mp);

	/*
	 * If the superblock buffer already has this transaction
	 * pointer in its b_fsprivate2 field, then we know we already
	 * have it locked.  In this case we just increment the lock
	 * recursion count and return the buffer to the caller.
	 */
	bp = mp->m_sb_bp;
	if (bp->b_transp == tp) {
		bip = bp->b_log_item;
		FUNC0(bip != NULL);
		FUNC0(FUNC2(&bip->bli_refcount) > 0);
		bip->bli_recur++;
		FUNC4(bip);
		return bp;
	}

	bp = FUNC5(mp);
	if (bp == NULL)
		return NULL;

	FUNC1(tp, bp, 1);
	FUNC3(bp->b_log_item);
	return bp;
}