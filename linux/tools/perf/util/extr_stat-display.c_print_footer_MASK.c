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
struct TYPE_2__ {int /*<<< orphan*/  ru_stime; int /*<<< orphan*/  ru_utime; } ;
struct perf_stat_config {int run_count; scalar_t__ print_mixed_hw_group_error; scalar_t__ print_free_counters_hint; scalar_t__ walltime_run_table; int /*<<< orphan*/  walltime_nsecs_stats; TYPE_1__ ru_data; scalar_t__ ru_display; int /*<<< orphan*/  null_run; int /*<<< orphan*/ * output; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 double NSEC_PER_SEC ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_stat_config*,double,double) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_stat_config*,int /*<<< orphan*/ *,int,double) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int*) ; 
 double FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct perf_stat_config *config)
{
	double avg = FUNC0(config->walltime_nsecs_stats) / NSEC_PER_SEC;
	FILE *output = config->output;
	int n;

	if (!config->null_run)
		FUNC1(output, "\n");

	if (config->run_count == 1) {
		FUNC1(output, " %17.9f seconds time elapsed", avg);

		if (config->ru_display) {
			double ru_utime = FUNC7(&config->ru_data.ru_utime);
			double ru_stime = FUNC7(&config->ru_data.ru_stime);

			FUNC1(output, "\n\n");
			FUNC1(output, " %17.9f seconds user\n", ru_utime);
			FUNC1(output, " %17.9f seconds sys\n", ru_stime);
		}
	} else {
		double sd = FUNC5(config->walltime_nsecs_stats) / NSEC_PER_SEC;
		/*
		 * Display at most 2 more significant
		 * digits than the stddev inaccuracy.
		 */
		int precision = FUNC2(sd) + 2;

		if (config->walltime_run_table)
			FUNC4(config, output, precision, avg);

		FUNC1(output, " %17.*f +- %.*f seconds time elapsed",
			precision, avg, precision, sd);

		FUNC3(config, sd, avg);
	}
	FUNC1(output, "\n\n");

	if (config->print_free_counters_hint &&
	    FUNC6("kernel/nmi_watchdog", &n) >= 0 &&
	    n > 0)
		FUNC1(output,
"Some events weren't counted. Try disabling the NMI watchdog:\n"
"	echo 0 > /proc/sys/kernel/nmi_watchdog\n"
"	perf stat ...\n"
"	echo 1 > /proc/sys/kernel/nmi_watchdog\n");

	if (config->print_mixed_hw_group_error)
		FUNC1(output,
			"The events in group usually have to be from "
			"the same PMU. Try reorganizing the group.\n");
}