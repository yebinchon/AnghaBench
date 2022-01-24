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

/* Variables and functions */
 scalar_t__ SOFTIRQ_DISABLE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(unsigned long ip, unsigned int cnt)
{
	FUNC0(FUNC3());
	FUNC7();
#ifdef CONFIG_TRACE_IRQFLAGS
	local_irq_disable();
#endif
	/*
	 * Are softirqs going to be turned on now:
	 */
	if (FUNC11() == SOFTIRQ_DISABLE_OFFSET)
		FUNC12(ip);
	/*
	 * Keep preemption disabled until we are done with
	 * softirq processing:
	 */
	FUNC10(cnt - 1);

	if (FUNC13(!FUNC2() && FUNC6())) {
		/*
		 * Run softirq if any pending. And do it in its own stack
		 * as we may be calling this deep in a task call stack already.
		 */
		FUNC1();
	}

	FUNC9();
#ifdef CONFIG_TRACE_IRQFLAGS
	local_irq_enable();
#endif
	FUNC8();
}