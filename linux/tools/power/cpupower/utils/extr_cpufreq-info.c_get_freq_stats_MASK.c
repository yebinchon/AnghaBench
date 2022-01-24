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
struct cpufreq_stats {double time_in_state; struct cpufreq_stats* next; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 struct cpufreq_stats* FUNC0 (unsigned int,unsigned long long*) ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_stats*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu, unsigned int human)
{
	unsigned long total_trans = FUNC1(cpu);
	unsigned long long total_time;
	struct cpufreq_stats *stats = FUNC0(cpu, &total_time);
	while (stats) {
		if (human) {
			FUNC3(stats->frequency);
			FUNC4(":%.2f%%",
				(100.0 * stats->time_in_state) / total_time);
		} else
			FUNC4("%lu:%llu",
				stats->frequency, stats->time_in_state);
		stats = stats->next;
		if (stats)
			FUNC4(", ");
	}
	FUNC2(stats);
	if (total_trans)
		FUNC4("  (%lu)\n", total_trans);
	return 0;
}