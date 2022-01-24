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
 int /*<<< orphan*/  PERF_COUNT_HW_MAX ; 
 int /*<<< orphan*/  PERF_COUNT_SW_MAX ; 
 size_t PERF_TYPE_BREAKPOINT ; 
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 size_t PERF_TYPE_RAW ; 
 int /*<<< orphan*/  PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  event_symbols_hw ; 
 int /*<<< orphan*/  event_symbols_sw ; 
 char** event_type_descriptors ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

void FUNC9(const char *event_glob, bool name_only, bool quiet_flag,
			bool long_desc, bool details_flag)
{
	FUNC5(event_glob, PERF_TYPE_HARDWARE,
			    event_symbols_hw, PERF_COUNT_HW_MAX, name_only);

	FUNC5(event_glob, PERF_TYPE_SOFTWARE,
			    event_symbols_sw, PERF_COUNT_SW_MAX, name_only);
	FUNC6(event_glob, name_only);

	FUNC2(event_glob, name_only);

	FUNC3(event_glob, name_only, quiet_flag, long_desc,
			details_flag);

	if (event_glob != NULL)
		return;

	if (!name_only) {
		FUNC8("  %-50s [%s]\n",
		       "rNNN",
		       event_type_descriptors[PERF_TYPE_RAW]);
		FUNC8("  %-50s [%s]\n",
		       "cpu/t1=v1[,t2=v2,t3 ...]/modifier",
		       event_type_descriptors[PERF_TYPE_RAW]);
		if (FUNC1())
			FUNC8("   (see 'man perf-list' on how to encode it)\n\n");

		FUNC8("  %-50s [%s]\n",
		       "mem:<addr>[/len][:access]",
			event_type_descriptors[PERF_TYPE_BREAKPOINT]);
		if (FUNC1())
			FUNC8("\n");
	}

	FUNC7(NULL, NULL, name_only);

	FUNC4(NULL, NULL, name_only);

	FUNC0(true, true, NULL, name_only, details_flag);
}