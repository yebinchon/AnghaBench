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
typedef  int /*<<< orphan*/  wait_queue_head_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * congestion_wqh ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC4 (long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/ * nr_wb_congested ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

long FUNC8(int sync, long timeout)
{
	long ret;
	unsigned long start = jiffies;
	FUNC0(wait);
	wait_queue_head_t *wqh = &congestion_wqh[sync];

	/*
	 * If there is no congestion, yield if necessary instead
	 * of sleeping on the congestion queue
	 */
	if (FUNC1(&nr_wb_congested[sync]) == 0) {
		FUNC2();

		/* In case we scheduled, work out time remaining */
		ret = timeout - (jiffies - start);
		if (ret < 0)
			ret = 0;

		goto out;
	}

	/* Sleep until uncongested or a write happens */
	FUNC6(wqh, &wait, TASK_UNINTERRUPTIBLE);
	ret = FUNC4(timeout);
	FUNC3(wqh, &wait);

out:
	FUNC7(FUNC5(timeout),
					FUNC5(jiffies - start));

	return ret;
}