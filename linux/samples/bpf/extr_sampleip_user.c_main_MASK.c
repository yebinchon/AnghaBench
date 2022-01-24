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
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int DEFAULT_FREQ ; 
 int DEFAULT_SECS ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 int FUNC0 (char*) ; 
 char* bpf_log_buf ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  int_exit ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 () ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/ * map_fd ; 
 int nr_cpus ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(int argc, char **argv)
{
	char filename[256];
	int *pmu_fd, opt, freq = DEFAULT_FREQ, secs = DEFAULT_SECS;

	/* process arguments */
	while ((opt = FUNC3(argc, argv, "F:h")) != -1) {
		switch (opt) {
		case 'F':
			freq = FUNC0(optarg);
			break;
		case 'h':
		default:
			FUNC16();
			return 0;
		}
	}
	if (argc - optind == 1)
		secs = FUNC0(argv[optind]);
	if (freq == 0 || secs == 0) {
		FUNC16();
		return 1;
	}

	/* initialize kernel symbol translation */
	if (FUNC5()) {
		FUNC1(stderr, "ERROR: loading /proc/kallsyms\n");
		return 2;
	}

	/* create perf FDs for each CPU */
	nr_cpus = FUNC15(_SC_NPROCESSORS_CONF);
	pmu_fd = FUNC6(nr_cpus * sizeof(int));
	if (pmu_fd == NULL) {
		FUNC1(stderr, "ERROR: malloc of pmu_fd\n");
		return 1;
	}

	/* load BPF program */
	FUNC13(filename, sizeof(filename), "%s_kern.o", argv[0]);
	if (FUNC4(filename)) {
		FUNC1(stderr, "ERROR: loading BPF program (errno %d):\n",
			errno);
		if (FUNC14(bpf_log_buf, "") == 0)
			FUNC1(stderr, "Try: ulimit -l unlimited\n");
		else
			FUNC1(stderr, "%s", bpf_log_buf);
		return 1;
	}
	FUNC11(SIGINT, int_exit);
	FUNC11(SIGTERM, int_exit);

	/* do sampling */
	FUNC8("Sampling at %d Hertz for %d seconds. Ctrl-C also ends.\n",
	       freq, secs);
	if (FUNC10(pmu_fd, freq) != 0)
		return 1;
	FUNC12(secs);
	FUNC9(pmu_fd);
	FUNC2(pmu_fd);

	/* output sample counts */
	FUNC7(map_fd[0]);

	return 0;
}