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
 int /*<<< orphan*/ * congestion_wqh ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC2 (long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

long FUNC6(int sync, long timeout)
{
	long ret;
	unsigned long start = jiffies;
	FUNC0(wait);
	wait_queue_head_t *wqh = &congestion_wqh[sync];

	FUNC4(wqh, &wait, TASK_UNINTERRUPTIBLE);
	ret = FUNC2(timeout);
	FUNC1(wqh, &wait);

	FUNC5(FUNC3(timeout),
					FUNC3(jiffies - start));

	return ret;
}