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
 int /*<<< orphan*/ * FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_present_set ; 
 int /*<<< orphan*/ * cpu_selected_set ; 
 int /*<<< orphan*/  cpu_setsize ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int max_cpu_num ; 
 scalar_t__ pkg_selected_set ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10(char *s)
{
	char *startp, *endp;
	int cpu = 0;

	if (pkg_selected_set) {
		FUNC8();
		FUNC5(1, "--cpu | --pkg");
	}
	cpu_selected_set = FUNC0((max_cpu_num + 1));
	if (cpu_selected_set == NULL)
		FUNC4(1, "cpu_selected_set");
	FUNC3(cpu_setsize, cpu_selected_set);

	for (startp = s; startp && *startp;) {

		if (*startp == ',') {
			startp++;
			continue;
		}

		if (*startp == '-') {
			int end_cpu;

			startp++;
			end_cpu = FUNC7(startp, &endp, 10);
			if (startp == endp)
				continue;

			while (cpu <= end_cpu) {
				if (cpu > max_cpu_num)
					FUNC5(1, "Requested cpu%d exceeds max cpu%d", cpu, max_cpu_num);
				FUNC2(cpu, cpu_setsize, cpu_selected_set);
				cpu++;
			}
			startp = endp;
			continue;
		}

		if (FUNC6(startp, "all", 3) == 0) {
			for (cpu = 0; cpu <= max_cpu_num; cpu += 1) {
				if (FUNC1(cpu, cpu_setsize, cpu_present_set))
					FUNC2(cpu, cpu_setsize, cpu_selected_set);
			}
			startp += 3;
			if (*startp == 0)
				break;
		}
		/* "--cpu even" is not documented */
		if (FUNC6(startp, "even", 4) == 0) {
			for (cpu = 0; cpu <= max_cpu_num; cpu += 2) {
				if (FUNC1(cpu, cpu_setsize, cpu_present_set))
					FUNC2(cpu, cpu_setsize, cpu_selected_set);
			}
			startp += 4;
			if (*startp == 0)
				break;
		}

		/* "--cpu odd" is not documented */
		if (FUNC6(startp, "odd", 3) == 0) {
			for (cpu = 1; cpu <= max_cpu_num; cpu += 2) {
				if (FUNC1(cpu, cpu_setsize, cpu_present_set))
					FUNC2(cpu, cpu_setsize, cpu_selected_set);
			}
			startp += 3;
			if (*startp == 0)
				break;
		}

		cpu = FUNC7(startp, &endp, 10);
		if (startp == endp)
			FUNC5(1, "--cpu cpu-set: confused by '%s'", startp);
		if (cpu > max_cpu_num)
			FUNC5(1, "Requested cpu%d exceeds max cpu%d", cpu, max_cpu_num);
		FUNC2(cpu, cpu_setsize, cpu_selected_set);
		startp = endp;
	}

	FUNC9();

}