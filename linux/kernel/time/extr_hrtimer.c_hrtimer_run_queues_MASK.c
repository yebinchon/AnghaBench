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
struct hrtimer_cpu_base {int softirq_activated; int /*<<< orphan*/  lock; int /*<<< orphan*/  softirq_expires_next; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_ACTIVE_HARD ; 
 int /*<<< orphan*/  HRTIMER_SOFTIRQ ; 
 int /*<<< orphan*/  KTIME_MAX ; 
 scalar_t__ FUNC0 (struct hrtimer_cpu_base*) ; 
 int /*<<< orphan*/  FUNC1 (struct hrtimer_cpu_base*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hrtimer_bases ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hrtimer_cpu_base*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hrtimer_cpu_base* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

void FUNC11(void)
{
	struct hrtimer_cpu_base *cpu_base = FUNC9(&hrtimer_bases);
	unsigned long flags;
	ktime_t now;

	if (FUNC0(cpu_base))
		return;

	/*
	 * This _is_ ugly: We have to check periodically, whether we
	 * can switch to highres and / or nohz mode. The clocksource
	 * switch happens with xtime_lock held. Notification from
	 * there only sets the check bit in the tick_oneshot code,
	 * otherwise we might deadlock vs. xtime_lock.
	 */
	if (FUNC10(!FUNC2())) {
		FUNC3();
		return;
	}

	FUNC7(&cpu_base->lock, flags);
	now = FUNC4(cpu_base);

	if (!FUNC5(now, cpu_base->softirq_expires_next)) {
		cpu_base->softirq_expires_next = KTIME_MAX;
		cpu_base->softirq_activated = 1;
		FUNC6(HRTIMER_SOFTIRQ);
	}

	FUNC1(cpu_base, now, flags, HRTIMER_ACTIVE_HARD);
	FUNC8(&cpu_base->lock, flags);
}