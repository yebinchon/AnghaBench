#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_mutex_t ;
struct TYPE_2__ {int /*<<< orphan*/  dep_map; } ;

/* Variables and functions */
 scalar_t__ _RET_IP_ ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(pthread_mutex_t *mutex)
{
	int r;

	FUNC4();

	FUNC2(&FUNC0(mutex)->dep_map, 0, 0, 0, 1, NULL,
			(unsigned long)_RET_IP_);
	/*
	 * Here's the thing with pthread mutexes: unlike the kernel variant,
	 * they can fail.
	 *
	 * This means that the behaviour here is a bit different from what's
	 * going on in the kernel: there we just tell lockdep that we took the
	 * lock before actually taking it, but here we must deal with the case
	 * that locking failed.
	 *
	 * To do that we'll "release" the lock if locking failed - this way
	 * we'll get lockdep doing the correct checks when we try to take
	 * the lock, and if that fails - we'll be back to the correct
	 * state by releasing it.
	 */
	r = FUNC1(mutex);
	if (r)
		FUNC3(&FUNC0(mutex)->dep_map, 0, (unsigned long)_RET_IP_);

	return r;
}