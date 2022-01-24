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
 int /*<<< orphan*/  ODD_COUNTERS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ do_irtl_snb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_epb ; 
 int /*<<< orphan*/  print_hwp ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  print_perf_limit ; 
 int /*<<< orphan*/  print_rapl ; 
 int /*<<< orphan*/  print_thermal ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  set_temperature_target ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7()
{
	FUNC6();
	FUNC5();
	FUNC0();
	FUNC1();
	FUNC4();


	if (!quiet)
		FUNC2(print_hwp, ODD_COUNTERS);

	if (!quiet)
		FUNC2(print_epb, ODD_COUNTERS);

	if (!quiet)
		FUNC2(print_perf_limit, ODD_COUNTERS);

	if (!quiet)
		FUNC2(print_rapl, ODD_COUNTERS);

	FUNC2(set_temperature_target, ODD_COUNTERS);

	if (!quiet)
		FUNC2(print_thermal, ODD_COUNTERS);

	if (!quiet && do_irtl_snb)
		FUNC3();
}