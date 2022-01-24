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
typedef  int /*<<< orphan*/  cpu_set_t ;
typedef  int /*<<< orphan*/  available_cpus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int CPU_SETSIZE ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(int argc, char **argv)
{
	int opt;
	bool do_suspend = true;
	bool succeeded = true;
	unsigned int tests = 0;
	cpu_set_t available_cpus;
	int err;
	int cpu;

	FUNC5();

	while ((opt = FUNC1(argc, argv, "n")) != -1) {
		switch (opt) {
		case 'n':
			do_suspend = false;
			break;
		default:
			FUNC9("Usage: %s [-n]\n", argv[0]);
			FUNC9("        -n: do not trigger a suspend/resume cycle before the test\n");
			return -1;
		}
	}

	for (cpu = 0; cpu < CPU_SETSIZE; cpu++) {
		if (!FUNC0(cpu, &available_cpus))
			continue;
		tests++;
	}
	FUNC6(tests);

	if (do_suspend)
		FUNC12();

	err = FUNC11(0, sizeof(available_cpus), &available_cpus);
	if (err < 0)
		FUNC3("sched_getaffinity() failed\n");

	for (cpu = 0; cpu < CPU_SETSIZE; cpu++) {
		bool test_success;

		if (!FUNC0(cpu, &available_cpus))
			continue;

		test_success = FUNC10(cpu);
		if (test_success) {
			FUNC8("CPU %d\n", cpu);
		} else {
			FUNC7("CPU %d\n", cpu);
			succeeded = false;
		}
	}

	if (succeeded)
		FUNC4();
	else
		FUNC2();
}