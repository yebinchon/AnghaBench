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
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  PACKAGE ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_chosen ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  set_opts ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(int argc, char **argv)
{
	extern char *optarg;
	extern int optind, opterr, optopt;
	unsigned int cpu;

	union {
		struct {
			int perf_bias:1;
		};
		int params;
	} params;
	int perf_bias = 0;
	int ret = 0;

	FUNC12(LC_ALL, "");
	FUNC14(PACKAGE);

	params.params = 0;
	/* parameter parsing */
	while ((ret = FUNC8(argc, argv, "b:",
						set_opts, NULL)) != -1) {
		switch (ret) {
		case 'b':
			if (params.perf_bias)
				FUNC10();
			perf_bias = FUNC1(optarg);
			if (perf_bias < 0 || perf_bias > 15) {
				FUNC11(FUNC0("--perf-bias param out "
					 "of range [0-%d]\n"), 15);
				FUNC10();
			}
			params.perf_bias = 1;
			break;
		default:
			FUNC10();
		}
	};

	if (!params.params)
		FUNC10();

	/* Default is: set all CPUs */
	if (FUNC3(cpus_chosen))
		FUNC6(cpus_chosen);

	/* loop over CPUs */
	for (cpu = FUNC2(cpus_chosen);
	     cpu <= FUNC5(cpus_chosen); cpu++) {

		if (!FUNC4(cpus_chosen, cpu))
			continue;

		if (FUNC13(cpu) != 1){
			FUNC7(stderr, FUNC0("Cannot set values on CPU %d:"), cpu);
			FUNC7(stderr, "%s", FUNC0(" *is offline\n"));
			continue;
		}

		if (params.perf_bias) {
			ret = FUNC9(cpu, perf_bias);
			if (ret) {
				FUNC7(stderr, FUNC0("Error setting perf-bias "
						  "value on CPU %d\n"), cpu);
				break;
			}
		}
	}
	return ret;
}