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
struct sched_param {int sched_priority; } ;
typedef  int /*<<< orphan*/  schedp ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_EXPLICIT_SCHED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sched_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct sched_param*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),void*) ; 

int FUNC7(pthread_t *pth, void*(*func)(void *), void *arg,
		     int policy, int prio)
{
	struct sched_param schedp;
	pthread_attr_t attr;
	int ret;

	FUNC2(&attr);
	FUNC1(&schedp, 0, sizeof(schedp));

	ret = FUNC3(&attr, PTHREAD_EXPLICIT_SCHED);
	if (ret) {
		FUNC0("pthread_attr_setinheritsched\n", ret);
		return -1;
	}

	ret = FUNC5(&attr, policy);
	if (ret) {
		FUNC0("pthread_attr_setschedpolicy\n", ret);
		return -1;
	}

	schedp.sched_priority = prio;
	ret = FUNC4(&attr, &schedp);
	if (ret) {
		FUNC0("pthread_attr_setschedparam\n", ret);
		return -1;
	}

	ret = FUNC6(pth, &attr, func, arg);
	if (ret) {
		FUNC0("pthread_create\n", ret);
		return -1;
	}
	return 0;
}