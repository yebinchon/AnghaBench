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
struct percpu_counter {int /*<<< orphan*/ * counters; int /*<<< orphan*/  lock; scalar_t__ count; } ;
typedef  scalar_t__ s64 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct percpu_counter *fbc, s64 amount, s32 batch)
{
	s64 count;

	FUNC2();
	count = FUNC0(*fbc->counters) + amount;
	if (count >= batch || count <= -batch) {
		unsigned long flags;
		FUNC4(&fbc->lock, flags);
		fbc->count += count;
		FUNC1(*fbc->counters, count - amount);
		FUNC5(&fbc->lock, flags);
	} else {
		FUNC6(*fbc->counters, amount);
	}
	FUNC3();
}