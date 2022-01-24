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
struct cpufreq_frequencies {struct cpufreq_frequencies* next; int /*<<< orphan*/  frequency; struct cpufreq_frequencies* first; } ;
typedef  int /*<<< orphan*/  linebuf ;

/* Variables and functions */
 int MAX_LINE_LEN ; 
 int SYSFS_PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_frequencies*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*) ; 
 int FUNC4 (char*,char*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (unsigned int,char*,char*,int) ; 

struct cpufreq_frequencies
*FUNC6(const char *type, unsigned int cpu)
{
	struct cpufreq_frequencies *first = NULL;
	struct cpufreq_frequencies *current = NULL;
	char one_value[SYSFS_PATH_MAX];
	char linebuf[MAX_LINE_LEN];
	char fname[MAX_LINE_LEN];
	unsigned int pos, i;
	unsigned int len;

	FUNC3(fname, MAX_LINE_LEN, "scaling_%s_frequencies", type);

	len = FUNC5(cpu, fname,
				linebuf, sizeof(linebuf));
	if (len == 0)
		return NULL;

	pos = 0;
	for (i = 0; i < len; i++) {
		if (linebuf[i] == ' ' || linebuf[i] == '\n') {
			if (i - pos < 2)
				continue;
			if (i - pos >= SYSFS_PATH_MAX)
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
			if (FUNC4(one_value, "%lu", &current->frequency) != 1)
				goto error_out;

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