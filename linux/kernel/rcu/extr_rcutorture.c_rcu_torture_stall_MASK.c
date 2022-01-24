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
 int HZ ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 unsigned long stall_cpu ; 
 int stall_cpu_holdoff ; 
 scalar_t__ stall_cpu_irqsoff ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(void *args)
{
	unsigned long stop_at;

	FUNC1("rcu_torture_stall task started");
	if (stall_cpu_holdoff > 0) {
		FUNC1("rcu_torture_stall begin holdoff");
		FUNC11(stall_cpu_holdoff * HZ);
		FUNC1("rcu_torture_stall end holdoff");
	}
	if (!FUNC2()) {
		stop_at = FUNC3() + stall_cpu;
		/* RCU CPU stall is expected behavior in following code. */
		FUNC9();
		if (stall_cpu_irqsoff)
			FUNC4();
		else
			FUNC7();
		FUNC6("rcu_torture_stall start on CPU %d.\n",
			 FUNC12());
		while (FUNC0((unsigned long)FUNC3(),
				    stop_at))
			continue;  /* Induce RCU CPU stall warning. */
		if (stall_cpu_irqsoff)
			FUNC5();
		else
			FUNC8();
		FUNC10();
		FUNC6("rcu_torture_stall end.\n");
	}
	FUNC13("rcu_torture_stall");
	while (!FUNC2())
		FUNC11(10 * HZ);
	return 0;
}