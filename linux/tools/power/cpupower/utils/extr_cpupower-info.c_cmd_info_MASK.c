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
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 int CPUPOWER_CAP_PERF_BIAS ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  PACKAGE ; 
 char* FUNC0 (char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ cpupower_cpu_info ; 
 int /*<<< orphan*/  cpus_chosen ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  run_as_root ; 
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
	} params = {};
	int ret = 0;

	FUNC12(LC_ALL, "");
	FUNC14(PACKAGE);

	/* parameter parsing */
	while ((ret = FUNC8(argc, argv, "b", set_opts, NULL)) != -1) {
		switch (ret) {
		case 'b':
			if (params.perf_bias)
				FUNC10();
			params.perf_bias = 1;
			break;
		default:
			FUNC10();
		}
	};

	if (!params.params)
		params.params = 0x7;

	/* Default is: show output of CPU 0 only */
	if (FUNC2(cpus_chosen))
		FUNC5(cpus_chosen, 0);

	/* Add more per cpu options here */
	if (!params.perf_bias)
		return ret;

	if (params.perf_bias) {
		if (!run_as_root) {
			params.perf_bias = 0;
			FUNC11(FUNC0("Intel's performance bias setting needs root privileges\n"));
		} else if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_PERF_BIAS)) {
			FUNC11(FUNC0("System does not support Intel's performance"
				 " bias setting\n"));
			params.perf_bias = 0;
		}
	}

	/* loop over CPUs */
	for (cpu = FUNC1(cpus_chosen);
	     cpu <= FUNC4(cpus_chosen); cpu++) {

		if (!FUNC3(cpus_chosen, cpu))
			continue;

		FUNC11(FUNC0("analyzing CPU %d:\n"), cpu);

		if (FUNC13(cpu) != 1){
			FUNC11(FUNC0(" *is offline\n"));
			continue;
		}

		if (params.perf_bias) {
			ret = FUNC9(cpu);
			if (ret < 0) {
				FUNC7(stderr,
			FUNC0("Could not read perf-bias value[%d]\n"), ret);
				FUNC6(EXIT_FAILURE);
			} else
				FUNC11(FUNC0("perf-bias: %d\n"), ret);
		}
	}
	return 0;
}