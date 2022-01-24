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
typedef  int /*<<< orphan*/  pthread_rwlockattr_t ;
typedef  int /*<<< orphan*/  pthread_rwlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(pthread_rwlock_t *rwlock,
			const pthread_rwlockattr_t *attr)
{
	int r;

	FUNC2();

	r = FUNC1(rwlock, attr);
	if (r == 0)
		FUNC0(rwlock);

	return r;
}