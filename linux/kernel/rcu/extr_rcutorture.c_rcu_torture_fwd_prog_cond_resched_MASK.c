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
 int /*<<< orphan*/  CONFIG_NO_HZ_FULL ; 
 int /*<<< orphan*/  CONFIG_PREEMPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(unsigned long iter)
{
	if (FUNC0(CONFIG_PREEMPT) && FUNC0(CONFIG_NO_HZ_FULL)) {
		// Real call_rcu() floods hit userspace, so emulate that.
		if (FUNC2() || (iter & 0xfff))
			FUNC3();
	} else {
		// No userspace emulation: CB invocation throttles call_rcu()
		FUNC1();
	}
}