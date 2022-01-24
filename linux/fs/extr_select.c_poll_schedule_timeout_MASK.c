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
struct poll_wqueues {int /*<<< orphan*/  triggered; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct poll_wqueues *pwq, int state,
			  ktime_t *expires, unsigned long slack)
{
	int rc = -EINTR;

	FUNC2(state);
	if (!pwq->triggered)
		rc = FUNC1(expires, slack, HRTIMER_MODE_ABS);
	FUNC0(TASK_RUNNING);

	/*
	 * Prepare for the next iteration.
	 *
	 * The following smp_store_mb() serves two purposes.  First, it's
	 * the counterpart rmb of the wmb in pollwake() such that data
	 * written before wake up is always visible after wake up.
	 * Second, the full barrier guarantees that triggered clearing
	 * doesn't pass event check of the next iteration.  Note that
	 * this problem doesn't exist for the first iteration as
	 * add_wait_queue() has full barrier semantics.
	 */
	FUNC3(pwq->triggered, 0);

	return rc;
}