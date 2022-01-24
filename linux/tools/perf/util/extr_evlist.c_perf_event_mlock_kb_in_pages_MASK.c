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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int page_size ; 
 unsigned long FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (char*,int*) ; 

unsigned long FUNC3(void)
{
	unsigned long pages;
	int max;

	if (FUNC2("kernel/perf_event_mlock_kb", &max) < 0) {
		/*
		 * Pick a once upon a time good value, i.e. things look
		 * strange since we can't read a sysctl value, but lets not
		 * die yet...
		 */
		max = 512;
	} else {
		max -= (page_size / 1024);
	}

	pages = (max * 1024) / page_size;
	if (!FUNC0(pages))
		pages = FUNC1(pages);

	return pages;
}