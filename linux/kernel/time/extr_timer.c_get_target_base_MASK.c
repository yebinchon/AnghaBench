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
struct timer_base {int dummy; } ;

/* Variables and functions */
 unsigned int TIMER_PINNED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct timer_base* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct timer_base* FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timers_migration_enabled ; 

__attribute__((used)) static inline struct timer_base *
FUNC4(struct timer_base *base, unsigned tflags)
{
#if defined(CONFIG_SMP) && defined(CONFIG_NO_HZ_COMMON)
	if (static_branch_likely(&timers_migration_enabled) &&
	    !(tflags & TIMER_PINNED))
		return get_timer_cpu_base(tflags, get_nohz_timer_target());
#endif
	return FUNC2(tflags);
}