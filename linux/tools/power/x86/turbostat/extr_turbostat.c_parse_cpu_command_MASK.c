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
 int /*<<< orphan*/ * FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int CPU_SUBSET_MAXCPUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cpu_subset ; 
 int /*<<< orphan*/  cpu_subset_size ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ show_core_only ; 
 scalar_t__ show_pkg_only ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 unsigned int FUNC9 (char*,char**,int) ; 

void FUNC10(char *optarg)
{
	unsigned int start, end;
	char *next;

	if (!FUNC8(optarg, "core")) {
		if (cpu_subset)
			goto error;
		show_core_only++;
		return;
	}
	if (!FUNC8(optarg, "package")) {
		if (cpu_subset)
			goto error;
		show_pkg_only++;
		return;
	}
	if (show_core_only || show_pkg_only)
		goto error;

	cpu_subset = FUNC0(CPU_SUBSET_MAXCPUS);
	if (cpu_subset == NULL)
		FUNC4(3, "CPU_ALLOC");
	cpu_subset_size = FUNC1(CPU_SUBSET_MAXCPUS);

	FUNC3(cpu_subset_size, cpu_subset);

	next = optarg;

	while (next && *next) {

		if (*next == '-')	/* no negative cpu numbers */
			goto error;

		start = FUNC9(next, &next, 10);

		if (start >= CPU_SUBSET_MAXCPUS)
			goto error;
		FUNC2(start, cpu_subset_size, cpu_subset);

		if (*next == '\0')
			break;

		if (*next == ',') {
			next += 1;
			continue;
		}

		if (*next == '-') {
			next += 1;	/* start range */
		} else if (*next == '.') {
			next += 1;
			if (*next == '.')
				next += 1;	/* start range */
			else
				goto error;
		}

		end = FUNC9(next, &next, 10);
		if (end <= start)
			goto error;

		while (++start <= end) {
			if (start >= CPU_SUBSET_MAXCPUS)
				goto error;
			FUNC2(start, cpu_subset_size, cpu_subset);
		}

		if (*next == ',')
			next += 1;
		else if (*next != '\0')
			goto error;
	}

	return;

error:
	FUNC6(stderr, "\"--cpu %s\" malformed\n", optarg);
	FUNC7();
	FUNC5(-1);
}