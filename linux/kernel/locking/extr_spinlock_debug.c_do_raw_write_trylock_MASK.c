#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  raw_lock; } ;
typedef  TYPE_1__ rwlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(rwlock_t *lock)
{
	int ret = FUNC1(&lock->raw_lock);

	if (ret)
		FUNC2(lock);
#ifndef CONFIG_SMP
	/*
	 * Must not happen on UP:
	 */
	FUNC0(!ret, lock, "trylock failure on UP");
#endif
	return ret;
}