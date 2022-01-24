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
struct xfs_buf {int b_flags; int /*<<< orphan*/  b_list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int _XBF_DELWRI_Q ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  submit_list ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC5 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_buf*) ; 

int
FUNC8(
	struct xfs_buf		*bp,
	struct list_head	*buffer_list)
{
	FUNC1		(submit_list);
	int			error;

	FUNC0(bp->b_flags & _XBF_DELWRI_Q);

	FUNC3(bp, _RET_IP_);

	/*
	 * Isolate the buffer to a new local list so we can submit it for I/O
	 * independently from the rest of the original list.
	 */
	FUNC6(bp);
	FUNC2(&bp->b_list, &submit_list);
	FUNC7(bp);

	/*
	 * Delwri submission clears the DELWRI_Q buffer flag and returns with
	 * the buffer on the wait list with the original reference. Rather than
	 * bounce the buffer from a local wait list back to the original list
	 * after I/O completion, reuse the original list as the wait list.
	 */
	FUNC4(&submit_list, buffer_list);

	/*
	 * The buffer is now locked, under I/O and wait listed on the original
	 * delwri queue. Wait for I/O completion, restore the DELWRI_Q flag and
	 * return with the buffer unlocked and on the original queue.
	 */
	error = FUNC5(bp);
	bp->b_flags |= _XBF_DELWRI_Q;
	FUNC7(bp);

	return error;
}