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
struct hrtimer_cpu_base {int /*<<< orphan*/ * clock_base; } ;
struct hrtimer {int is_soft; int is_hard; int /*<<< orphan*/  node; int /*<<< orphan*/ * base; } ;
typedef  enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
typedef  scalar_t__ clockid_t ;

/* Variables and functions */
 scalar_t__ CLOCK_MONOTONIC ; 
 scalar_t__ CLOCK_REALTIME ; 
 int /*<<< orphan*/  CONFIG_PREEMPT_RT ; 
 int HRTIMER_MAX_CLOCK_BASES ; 
 int HRTIMER_MODE_HARD ; 
 int HRTIMER_MODE_REL ; 
 int HRTIMER_MODE_SOFT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hrtimer_bases ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*,int /*<<< orphan*/ ,int) ; 
 struct hrtimer_cpu_base* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hrtimer *timer, clockid_t clock_id,
			   enum hrtimer_mode mode)
{
	bool softtimer = !!(mode & HRTIMER_MODE_SOFT);
	struct hrtimer_cpu_base *cpu_base;
	int base;

	/*
	 * On PREEMPT_RT enabled kernels hrtimers which are not explicitely
	 * marked for hard interrupt expiry mode are moved into soft
	 * interrupt context for latency reasons and because the callbacks
	 * can invoke functions which might sleep on RT, e.g. spin_lock().
	 */
	if (FUNC0(CONFIG_PREEMPT_RT) && !(mode & HRTIMER_MODE_HARD))
		softtimer = true;

	FUNC2(timer, 0, sizeof(struct hrtimer));

	cpu_base = FUNC3(&hrtimer_bases);

	/*
	 * POSIX magic: Relative CLOCK_REALTIME timers are not affected by
	 * clock modifications, so they needs to become CLOCK_MONOTONIC to
	 * ensure POSIX compliance.
	 */
	if (clock_id == CLOCK_REALTIME && mode & HRTIMER_MODE_REL)
		clock_id = CLOCK_MONOTONIC;

	base = softtimer ? HRTIMER_MAX_CLOCK_BASES / 2 : 0;
	base += FUNC1(clock_id);
	timer->is_soft = softtimer;
	timer->is_hard = !softtimer;
	timer->base = &cpu_base->clock_base[base];
	FUNC4(&timer->node);
}