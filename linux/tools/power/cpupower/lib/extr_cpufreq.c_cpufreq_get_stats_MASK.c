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
struct cpufreq_stats {unsigned long long time_in_state; struct cpufreq_stats* next; int /*<<< orphan*/  frequency; struct cpufreq_stats* first; } ;
typedef  int /*<<< orphan*/  linebuf ;

/* Variables and functions */
 int MAX_LINE_LEN ; 
 int SYSFS_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_stats*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 unsigned int FUNC4 (char*) ; 
 unsigned int FUNC5 (unsigned int,char*,char*,int) ; 

struct cpufreq_stats *FUNC6(unsigned int cpu,
					unsigned long long *total_time)
{
	struct cpufreq_stats *first = NULL;
	struct cpufreq_stats *current = NULL;
	char one_value[SYSFS_PATH_MAX];
	char linebuf[MAX_LINE_LEN];
	unsigned int pos, i;
	unsigned int len;

	len = FUNC5(cpu, "stats/time_in_state",
				linebuf, sizeof(linebuf));
	if (len == 0)
		return NULL;

	*total_time = 0;
	pos = 0;
	for (i = 0; i < len; i++) {
		if (i == FUNC4(linebuf) || linebuf[i] == '\n')	{
			if (i - pos < 2)
				continue;
			if ((i - pos) >= SYSFS_PATH_MAX)
				goto error_out;
			if (current) {
				current->next = FUNC1(sizeof(*current));
				if (!current->next)
					goto error_out;
				current = current->next;
			} else {
				first = FUNC1(sizeof(*first));
				if (!first)
					goto error_out;
				current = first;
			}
			current->first = first;
			current->next = NULL;

			FUNC2(one_value, linebuf + pos, i - pos);
			one_value[i - pos] = '\0';
			if (FUNC3(one_value, "%lu %llu",
					&current->frequency,
					&current->time_in_state) != 2)
				goto error_out;

			*total_time = *total_time + current->time_in_state;
			pos = i + 1;
		}
	}

	return first;

 error_out:
	while (first) {
		current = first->next;
		FUNC0(first);
		first = current;
	}
	return NULL;
}