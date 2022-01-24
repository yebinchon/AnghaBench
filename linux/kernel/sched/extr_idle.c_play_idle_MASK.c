#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct idle_timer {scalar_t__ done; TYPE_1__ timer; } ;
struct TYPE_5__ {scalar_t__ policy; int nr_cpus_allowed; int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 unsigned long NSEC_PER_USEC ; 
 int PF_IDLE ; 
 int PF_KTHREAD ; 
 int PF_NO_SETAFFINITY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ SCHED_FIFO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idle_inject_timer_fn ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(unsigned long duration_us)
{
	struct idle_timer it;

	/*
	 * Only FIFO tasks can disable the tick since they don't need the forced
	 * preemption.
	 */
	FUNC1(current->policy != SCHED_FIFO);
	FUNC1(current->nr_cpus_allowed != 1);
	FUNC1(!(current->flags & PF_KTHREAD));
	FUNC1(!(current->flags & PF_NO_SETAFFINITY));
	FUNC1(!duration_us);

	FUNC10();
	FUNC7();
	current->flags |= PF_IDLE;
	FUNC2(true);

	it.done = 0;
	FUNC4(&it.timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	it.timer.function = idle_inject_timer_fn;
	FUNC5(&it.timer, FUNC6(duration_us * NSEC_PER_USEC),
		      HRTIMER_MODE_REL_PINNED);

	while (!FUNC0(it.done))
		FUNC3();

	FUNC2(false);
	current->flags &= ~PF_IDLE;

	FUNC9();
	FUNC8();
}