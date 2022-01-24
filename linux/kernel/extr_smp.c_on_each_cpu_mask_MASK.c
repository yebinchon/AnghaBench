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
struct cpumask {int dummy; } ;
typedef  int /*<<< orphan*/  (* smp_call_func_t ) (void*) ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct cpumask const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cpumask const*,int /*<<< orphan*/  (*) (void*),void*,int) ; 

void FUNC6(const struct cpumask *mask, smp_call_func_t func,
			void *info, bool wait)
{
	int cpu = FUNC1();

	FUNC5(mask, func, info, wait);
	if (FUNC0(cpu, mask)) {
		unsigned long flags;
		FUNC3(flags);
		func(info);
		FUNC2(flags);
	}
	FUNC4();
}