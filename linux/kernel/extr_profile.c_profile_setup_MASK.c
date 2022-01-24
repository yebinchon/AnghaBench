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
 int /*<<< orphan*/  CPU_PROFILING ; 
 int /*<<< orphan*/  KVM_PROFILING ; 
 int /*<<< orphan*/  SCHED_PROFILING ; 
 int /*<<< orphan*/  SLEEP_PROFILING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char**,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  prof_on ; 
 int prof_shift ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

int FUNC6(char *str)
{
	static const char schedstr[] = "schedule";
	static const char sleepstr[] = "sleep";
	static const char kvmstr[] = "kvm";
	int par;

	if (!FUNC5(str, sleepstr, FUNC4(sleepstr))) {
#ifdef CONFIG_SCHEDSTATS
		force_schedstat_enabled();
		prof_on = SLEEP_PROFILING;
		if (str[strlen(sleepstr)] == ',')
			str += strlen(sleepstr) + 1;
		if (get_option(&str, &par))
			prof_shift = par;
		pr_info("kernel sleep profiling enabled (shift: %ld)\n",
			prof_shift);
#else
		FUNC3("kernel sleep profiling requires CONFIG_SCHEDSTATS\n");
#endif /* CONFIG_SCHEDSTATS */
	} else if (!FUNC5(str, schedstr, FUNC4(schedstr))) {
		prof_on = SCHED_PROFILING;
		if (str[FUNC4(schedstr)] == ',')
			str += FUNC4(schedstr) + 1;
		if (FUNC1(&str, &par))
			prof_shift = par;
		FUNC2("kernel schedule profiling enabled (shift: %ld)\n",
			prof_shift);
	} else if (!FUNC5(str, kvmstr, FUNC4(kvmstr))) {
		prof_on = KVM_PROFILING;
		if (str[FUNC4(kvmstr)] == ',')
			str += FUNC4(kvmstr) + 1;
		if (FUNC1(&str, &par))
			prof_shift = par;
		FUNC2("kernel KVM profiling enabled (shift: %ld)\n",
			prof_shift);
	} else if (FUNC1(&str, &par)) {
		prof_shift = par;
		prof_on = CPU_PROFILING;
		FUNC2("kernel profiling enabled (shift: %ld)\n",
			prof_shift);
	}
	return 1;
}