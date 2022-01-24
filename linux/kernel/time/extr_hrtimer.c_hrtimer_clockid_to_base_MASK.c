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
typedef  size_t clockid_t ;

/* Variables and functions */
 int HRTIMER_BASE_MONOTONIC ; 
 int HRTIMER_MAX_CLOCK_BASES ; 
 size_t MAX_CLOCKS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,size_t) ; 
 int* hrtimer_clock_to_base_table ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(clockid_t clock_id)
{
	if (FUNC1(clock_id < MAX_CLOCKS)) {
		int base = hrtimer_clock_to_base_table[clock_id];

		if (FUNC1(base != HRTIMER_MAX_CLOCK_BASES))
			return base;
	}
	FUNC0(1, "Invalid clockid %d. Using MONOTONIC\n", clock_id);
	return HRTIMER_BASE_MONOTONIC;
}