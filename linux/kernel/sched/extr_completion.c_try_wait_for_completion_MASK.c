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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct completion {scalar_t__ done; TYPE_1__ wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC3(struct completion *x)
{
	unsigned long flags;
	bool ret = true;

	/*
	 * Since x->done will need to be locked only
	 * in the non-blocking case, we check x->done
	 * first without taking the lock so we can
	 * return early in the blocking case.
	 */
	if (!FUNC0(x->done))
		return false;

	FUNC1(&x->wait.lock, flags);
	if (!x->done)
		ret = false;
	else if (x->done != UINT_MAX)
		x->done--;
	FUNC2(&x->wait.lock, flags);
	return ret;
}