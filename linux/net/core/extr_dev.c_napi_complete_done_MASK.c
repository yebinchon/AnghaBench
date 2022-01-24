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
struct napi_struct {unsigned long state; int /*<<< orphan*/  poll_list; int /*<<< orphan*/  timer; TYPE_1__* dev; scalar_t__ gro_bitmask; } ;
struct TYPE_2__ {unsigned long gro_flush_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 unsigned long NAPIF_STATE_IN_BUSY_POLL ; 
 unsigned long NAPIF_STATE_MISSED ; 
 unsigned long NAPIF_STATE_NPSVC ; 
 unsigned long NAPIF_STATE_SCHED ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 unsigned long FUNC3 (unsigned long*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct napi_struct*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 scalar_t__ FUNC12 (unsigned long) ; 

bool FUNC13(struct napi_struct *n, int work_done)
{
	unsigned long flags, val, new;

	/*
	 * 1) Don't let napi dequeue from the cpu poll list
	 *    just in case its running on a different cpu.
	 * 2) If we are busy polling, do nothing here, we have
	 *    the guarantee we will be called later.
	 */
	if (FUNC12(n->state & (NAPIF_STATE_NPSVC |
				 NAPIF_STATE_IN_BUSY_POLL)))
		return false;

	FUNC4(n);

	if (n->gro_bitmask) {
		unsigned long timeout = 0;

		if (work_done)
			timeout = n->dev->gro_flush_timeout;

		/* When the NAPI instance uses a timeout and keeps postponing
		 * it, we need to bound somehow the time packets are kept in
		 * the GRO layer
		 */
		FUNC10(n, !!timeout);
		if (timeout)
			FUNC5(&n->timer, FUNC11(timeout),
				      HRTIMER_MODE_REL_PINNED);
	}
	if (FUNC12(!FUNC7(&n->poll_list))) {
		/* If n->poll_list is not empty, we need to mask irqs */
		FUNC9(flags);
		FUNC6(&n->poll_list);
		FUNC8(flags);
	}

	do {
		val = FUNC0(n->state);

		FUNC1(!(val & NAPIF_STATE_SCHED));

		new = val & ~(NAPIF_STATE_MISSED | NAPIF_STATE_SCHED);

		/* If STATE_MISSED was set, leave STATE_SCHED set,
		 * because we will call napi->poll() one more time.
		 * This C code was suggested by Alexander Duyck to help gcc.
		 */
		new |= (val & NAPIF_STATE_MISSED) / NAPIF_STATE_MISSED *
						    NAPIF_STATE_SCHED;
	} while (FUNC3(&n->state, val, new) != val);

	if (FUNC12(val & NAPIF_STATE_MISSED)) {
		FUNC2(n);
		return false;
	}

	return true;
}