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
struct xfs_buf {int /*<<< orphan*/ * b_iodone; int /*<<< orphan*/  b_li_list; int /*<<< orphan*/ * b_log_item; scalar_t__ b_first_retry_time; scalar_t__ b_retries; scalar_t__ b_last_error; scalar_t__ b_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 scalar_t__ FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 

void
FUNC4(
	struct xfs_buf		*bp)
{
	/*
	 * If there is an error, process it. Some errors require us
	 * to run callbacks after failure processing is done so we
	 * detect that and take appropriate action.
	 */
	if (bp->b_error && FUNC2(bp))
		return;

	/*
	 * Successful IO or permanent error. Either way, we can clear the
	 * retry state here in preparation for the next error that may occur.
	 */
	bp->b_last_error = 0;
	bp->b_retries = 0;
	bp->b_first_retry_time = 0;

	FUNC1(bp);
	bp->b_log_item = NULL;
	FUNC0(&bp->b_li_list);
	bp->b_iodone = NULL;
	FUNC3(bp);
}