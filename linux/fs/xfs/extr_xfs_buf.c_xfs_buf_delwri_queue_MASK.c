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
struct xfs_buf {int b_flags; int /*<<< orphan*/  b_list; int /*<<< orphan*/  b_hold; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XBF_READ ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int _XBF_DELWRI_Q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xfs_buf*) ; 

bool
FUNC7(
	struct xfs_buf		*bp,
	struct list_head	*list)
{
	FUNC0(FUNC6(bp));
	FUNC0(!(bp->b_flags & XBF_READ));

	/*
	 * If the buffer is already marked delwri it already is queued up
	 * by someone else for imediate writeout.  Just ignore it in that
	 * case.
	 */
	if (bp->b_flags & _XBF_DELWRI_Q) {
		FUNC5(bp, _RET_IP_);
		return false;
	}

	FUNC4(bp, _RET_IP_);

	/*
	 * If a buffer gets written out synchronously or marked stale while it
	 * is on a delwri list we lazily remove it. To do this, the other party
	 * clears the  _XBF_DELWRI_Q flag but otherwise leaves the buffer alone.
	 * It remains referenced and on the list.  In a rare corner case it
	 * might get readded to a delwri list after the synchronous writeout, in
	 * which case we need just need to re-add the flag here.
	 */
	bp->b_flags |= _XBF_DELWRI_Q;
	if (FUNC3(&bp->b_list)) {
		FUNC1(&bp->b_hold);
		FUNC2(&bp->b_list, list);
	}

	return true;
}