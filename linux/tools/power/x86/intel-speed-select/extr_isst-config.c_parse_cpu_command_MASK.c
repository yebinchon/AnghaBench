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
 int MAX_CPUS_IN_ONE_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int max_target_cpus ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC3 (char*,char**,int) ; 
 int* target_cpus ; 

void FUNC4(char *optarg)
{
	unsigned int start, end;
	char *next;

	next = optarg;

	while (next && *next) {
		if (*next == '-') /* no negative cpu numbers */
			goto error;

		start = FUNC3(next, &next, 10);

		if (max_target_cpus < MAX_CPUS_IN_ONE_REQ)
			target_cpus[max_target_cpus++] = start;

		if (*next == '\0')
			break;

		if (*next == ',') {
			next += 1;
			continue;
		}

		if (*next == '-') {
			next += 1; /* start range */
		} else if (*next == '.') {
			next += 1;
			if (*next == '.')
				next += 1; /* start range */
			else
				goto error;
		}

		end = FUNC3(next, &next, 10);
		if (end <= start)
			goto error;

		while (++start <= end) {
			if (max_target_cpus < MAX_CPUS_IN_ONE_REQ)
				target_cpus[max_target_cpus++] = start;
		}

		if (*next == ',')
			next += 1;
		else if (*next != '\0')
			goto error;
	}

#ifdef DEBUG
	{
		int i;

		for (i = 0; i < max_target_cpus; ++i)
			printf("cpu [%d] in arg\n", target_cpus[i]);
	}
#endif
	return;

error:
	FUNC1(stderr, "\"--cpu %s\" malformed\n", optarg);
	FUNC0(-1);
}