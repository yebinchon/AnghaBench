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
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
typedef  int /*<<< orphan*/  pthread_mutex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(pthread_mutex_t *mutex,
			const pthread_mutexattr_t *attr)
{
	int r;

	/*
	 * We keep trying to init our preload module because there might be
	 * code in init sections that tries to touch locks before we are
	 * initialized, in that case we'll need to manually call preload
	 * to get us going.
	 *
	 * Funny enough, kernel's lockdep had the same issue, and used
	 * (almost) the same solution. See look_up_lock_class() in
	 * kernel/locking/lockdep.c for details.
	 */
	FUNC2();

	r = FUNC1(mutex, attr);
	if (r == 0)
		/*
		 * We do a dummy initialization here so that lockdep could
		 * warn us if something fishy is going on - such as
		 * initializing a held lock.
		 */
		FUNC0(mutex);

	return r;
}