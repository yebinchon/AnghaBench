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
struct completion {TYPE_1__ wait; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC3(struct completion *x)
{
	unsigned long flags;

	if (!FUNC0(x->done))
		return false;

	/*
	 * If ->done, we need to wait for complete() to release ->wait.lock
	 * otherwise we can end up freeing the completion before complete()
	 * is done referencing it.
	 */
	FUNC1(&x->wait.lock, flags);
	FUNC2(&x->wait.lock, flags);
	return true;
}