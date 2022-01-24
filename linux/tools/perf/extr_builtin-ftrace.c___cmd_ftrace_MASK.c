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
struct pollfd {int events; int fd; int revents; } ;
struct perf_ftrace {char* tracer; int /*<<< orphan*/  evlist; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int POLLIN ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ done ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ftrace__workload_exec_failed_signal ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int,char*,int) ; 
 scalar_t__ FUNC12 (struct perf_ftrace*) ; 
 scalar_t__ FUNC13 (struct perf_ftrace*) ; 
 scalar_t__ FUNC14 (struct perf_ftrace*) ; 
 scalar_t__ FUNC15 (struct perf_ftrace*) ; 
 scalar_t__ FUNC16 (struct perf_ftrace*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  sig_handler ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC19 (char*,char*) ; 

__attribute__((used)) static int FUNC20(struct perf_ftrace *ftrace, int argc, const char **argv)
{
	char *trace_file;
	int trace_fd;
	char buf[4096];
	struct pollfd pollfd = {
		.events = POLLIN,
	};

	if (!FUNC5(CAP_SYS_ADMIN)) {
		FUNC9("ftrace only works for %s!\n",
#ifdef HAVE_LIBCAP_SUPPORT
		"users with the SYS_ADMIN capability"
#else
		"root"
#endif
		);
		return -1;
	}

	FUNC18(SIGINT, sig_handler);
	FUNC18(SIGUSR1, sig_handler);
	FUNC18(SIGCHLD, sig_handler);
	FUNC18(SIGPIPE, sig_handler);

	if (FUNC12(ftrace) < 0) {
		FUNC9("failed to reset ftrace\n");
		goto out;
	}

	/* reset ftrace buffer */
	if (FUNC19("trace", "0") < 0)
		goto out;

	if (argc && FUNC6(ftrace->evlist,
				&ftrace->target, argv, false,
				ftrace__workload_exec_failed_signal) < 0) {
		goto out;
	}

	if (FUNC16(ftrace) < 0) {
		FUNC9("failed to set ftrace pid\n");
		goto out_reset;
	}

	if (FUNC13(ftrace) < 0) {
		FUNC9("failed to set tracing cpumask\n");
		goto out_reset;
	}

	if (FUNC15(ftrace) < 0) {
		FUNC9("failed to set tracing filters\n");
		goto out_reset;
	}

	if (FUNC14(ftrace) < 0) {
		FUNC9("failed to set graph depth\n");
		goto out_reset;
	}

	if (FUNC19("current_tracer", ftrace->tracer) < 0) {
		FUNC9("failed to set current_tracer to %s\n", ftrace->tracer);
		goto out_reset;
	}

	FUNC17();

	trace_file = FUNC3("trace_pipe");
	if (!trace_file) {
		FUNC9("failed to open trace_pipe\n");
		goto out_reset;
	}

	trace_fd = FUNC4(trace_file, O_RDONLY);

	FUNC10(trace_file);

	if (trace_fd < 0) {
		FUNC9("failed to open trace_pipe\n");
		goto out_reset;
	}

	FUNC1(trace_fd, F_SETFL, O_NONBLOCK);
	pollfd.fd = trace_fd;

	if (FUNC19("tracing_on", "1") < 0) {
		FUNC9("can't enable tracing\n");
		goto out_close_fd;
	}

	FUNC7(ftrace->evlist);

	while (!done) {
		if (FUNC8(&pollfd, 1, -1) < 0)
			break;

		if (pollfd.revents & POLLIN) {
			int n = FUNC11(trace_fd, buf, sizeof(buf));
			if (n < 0)
				break;
			if (FUNC2(buf, n, 1, stdout) != 1)
				break;
		}
	}

	FUNC19("tracing_on", "0");

	/* read remaining buffer contents */
	while (true) {
		int n = FUNC11(trace_fd, buf, sizeof(buf));
		if (n <= 0)
			break;
		if (FUNC2(buf, n, 1, stdout) != 1)
			break;
	}

out_close_fd:
	FUNC0(trace_fd);
out_reset:
	FUNC12(ftrace);
out:
	return done ? 0 : -1;
}