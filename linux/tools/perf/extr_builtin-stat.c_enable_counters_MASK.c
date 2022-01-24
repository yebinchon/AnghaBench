#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int initial_delay; } ;

/* Variables and functions */
 int USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evsel_list ; 
 TYPE_1__ stat_config ; 
 int /*<<< orphan*/  target ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (stat_config.initial_delay)
		FUNC2(stat_config.initial_delay * USEC_PER_MSEC);

	/*
	 * We need to enable counters only if:
	 * - we don't have tracee (attaching to task or cpu)
	 * - we have initial delay configured
	 */
	if (!FUNC1(&target) || stat_config.initial_delay)
		FUNC0(evsel_list);
}