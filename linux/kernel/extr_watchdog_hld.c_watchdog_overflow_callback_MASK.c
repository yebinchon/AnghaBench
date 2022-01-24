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
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ interrupts; } ;
struct perf_event {TYPE_1__ hw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hard_watchdog_warn ; 
 int /*<<< orphan*/  hardlockup_allcpu_dumped ; 
 scalar_t__ hardlockup_panic ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct pt_regs*) ; 
 int FUNC9 () ; 
 scalar_t__ sysctl_hardlockup_all_cpu_backtrace ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  watchdog_nmi_touch ; 

__attribute__((used)) static void FUNC13(struct perf_event *event,
				       struct perf_sample_data *data,
				       struct pt_regs *regs)
{
	/* Ensure the watchdog never gets throttled */
	event->hw.interrupts = 0;

	if (FUNC0(watchdog_nmi_touch) == true) {
		FUNC1(watchdog_nmi_touch, false);
		return;
	}

	if (!FUNC12())
		return;

	/* check for a hardlockup
	 * This is done by making sure our timer interrupt
	 * is incrementing.  The timer interrupt should have
	 * fired multiple times before we overflow'd.  If it hasn't
	 * then this is a good indication the cpu is stuck
	 */
	if (FUNC3()) {
		int this_cpu = FUNC9();

		/* only print hardlockups once */
		if (FUNC0(hard_watchdog_warn) == true)
			return;

		FUNC5("Watchdog detected hard LOCKUP on cpu %d\n",
			 this_cpu);
		FUNC7();
		FUNC6(current);
		if (regs)
			FUNC8(regs);
		else
			FUNC2();

		/*
		 * Perform all-CPU dump only once to avoid multiple hardlockups
		 * generating interleaving traces
		 */
		if (sysctl_hardlockup_all_cpu_backtrace &&
				!FUNC10(0, &hardlockup_allcpu_dumped))
			FUNC11();

		if (hardlockup_panic)
			FUNC4(regs, "Hard LOCKUP");

		FUNC1(hard_watchdog_warn, true);
		return;
	}

	FUNC1(hard_watchdog_warn, false);
	return;
}