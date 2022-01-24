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
struct TYPE_2__ {int softirqs_enabled; } ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int debug_locks ; 
 scalar_t__ debug_locks_verbose ; 
 int /*<<< orphan*/  expected_testcase_failures ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  testcase_successes ; 
 int /*<<< orphan*/  testcase_total ; 
 int /*<<< orphan*/  unexpected_testcase_failures ; 

__attribute__((used)) static void FUNC7(void (*testcase_fn)(void), int expected, int lockclass_mask)
{
	unsigned long saved_preempt_count = FUNC3();

	FUNC0(FUNC1());

	testcase_fn();
	/*
	 * Filter out expected failures:
	 */
#ifndef CONFIG_PROVE_LOCKING
	if (expected == FAILURE && debug_locks) {
		expected_testcase_failures++;
		FUNC2("failed|");
	}
	else
#endif
	if (debug_locks != expected) {
		unexpected_testcase_failures++;
		FUNC2("FAILED|");
	} else {
		testcase_successes++;
		FUNC2("  ok  |");
	}
	testcase_total++;

	if (debug_locks_verbose)
		FUNC2(" lockclass mask: %x, debug_locks: %d, expected: %d\n",
			lockclass_mask, debug_locks, expected);
	/*
	 * Some tests (e.g. double-unlock) might corrupt the preemption
	 * count, so restore it:
	 */
	FUNC4(saved_preempt_count);
#ifdef CONFIG_TRACE_IRQFLAGS
	if (softirq_count())
		current->softirqs_enabled = 0;
	else
		current->softirqs_enabled = 1;
#endif

	FUNC5();
}