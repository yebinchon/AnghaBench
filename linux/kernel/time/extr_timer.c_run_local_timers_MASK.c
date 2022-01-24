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
struct timer_base {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 size_t BASE_STD ; 
 int /*<<< orphan*/  CONFIG_NO_HZ_COMMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMER_SOFTIRQ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct timer_base* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * timer_bases ; 

void FUNC5(void)
{
	struct timer_base *base = FUNC3(&timer_bases[BASE_STD]);

	FUNC1();
	/* Raise the softirq only if required. */
	if (FUNC4(jiffies, base->clk)) {
		if (!FUNC0(CONFIG_NO_HZ_COMMON))
			return;
		/* CPU is awake, so check the deferrable base. */
		base++;
		if (FUNC4(jiffies, base->clk))
			return;
	}
	FUNC2(TIMER_SOFTIRQ);
}