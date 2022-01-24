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
struct rlimit {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  bpf_obj_file ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  RLIMIT_MEMLOCK ; 
 int /*<<< orphan*/  RLIM_INFINITY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 char* bpf_log_buf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * event_fd ; 
 int FUNC2 (int,char**,char*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  long_options ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/ * prog_fd ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 

int FUNC12(int argc, char **argv)
{
	struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
	int longindex = 0, opt;
	int ret = EXIT_SUCCESS;
	char bpf_obj_file[256];

	/* Default settings: */
	bool errors_only = true;
	int interval = 2;

	FUNC8(bpf_obj_file, sizeof(bpf_obj_file), "%s_kern.o", argv[0]);

	/* Parse commands line args */
	while ((opt = FUNC2(argc, argv, "hDSs:",
				  long_options, &longindex)) != -1) {
		switch (opt) {
		case 'D':
			debug = true;
			break;
		case 'S':
			errors_only = false;
			break;
		case 's':
			interval = FUNC0(optarg);
			break;
		case 'h':
		default:
			FUNC11(argv);
			return EXIT_FAILURE;
		}
	}

	if (FUNC7(RLIMIT_MEMLOCK, &r)) {
		FUNC4("setrlimit(RLIMIT_MEMLOCK)");
		return EXIT_FAILURE;
	}

	if (FUNC3(bpf_obj_file)) {
		FUNC6("ERROR - bpf_log_buf: %s", bpf_log_buf);
		return EXIT_FAILURE;
	}
	if (!prog_fd[0]) {
		FUNC6("ERROR - load_bpf_file: %s\n", FUNC10(errno));
		return EXIT_FAILURE;
	}

	if (debug) {
		FUNC5();
	}

	/* Unload/stop tracepoint event by closing fd's */
	if (errors_only) {
		/* The prog_fd[i] and event_fd[i] depend on the
		 * order the functions was defined in _kern.c
		 */
		FUNC1(event_fd[2]); /* tracepoint/xdp/xdp_redirect */
		FUNC1(prog_fd[2]);  /* func: trace_xdp_redirect */
		FUNC1(event_fd[3]); /* tracepoint/xdp/xdp_redirect_map */
		FUNC1(prog_fd[3]);  /* func: trace_xdp_redirect_map */
	}

	FUNC9(interval, errors_only);

	return ret;
}