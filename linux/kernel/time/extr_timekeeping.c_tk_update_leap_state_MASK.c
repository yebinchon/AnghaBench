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
struct timekeeper {scalar_t__ next_leap_ktime; int /*<<< orphan*/  offs_real; } ;

/* Variables and functions */
 scalar_t__ KTIME_MAX ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct timekeeper *tk)
{
	tk->next_leap_ktime = FUNC1();
	if (tk->next_leap_ktime != KTIME_MAX)
		/* Convert to monotonic time */
		tk->next_leap_ktime = FUNC0(tk->next_leap_ktime, tk->offs_real);
}