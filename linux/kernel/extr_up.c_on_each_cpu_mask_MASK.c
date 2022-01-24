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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(const struct cpumask *mask,
		      smp_call_func_t func, void *info, bool wait)
{
	unsigned long flags;

	if (FUNC0(0, mask)) {
		FUNC2(flags);
		func(info);
		FUNC1(flags);
	}
}