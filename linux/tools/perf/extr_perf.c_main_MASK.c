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
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EXEC_PATH_ENVIRONMENT ; 
 int /*<<< orphan*/  PERF_EXEC_PATH ; 
 int /*<<< orphan*/  PERF_PAGER_ENVIRONMENT ; 
 int /*<<< orphan*/  PREFIX ; 
 int STRERR_BUFSIZE ; 
 int FUNC0 (int,char const**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  config_exclusive_filename ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char const***,int*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libperf_print ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  perf_default_config ; 
 char* perf_more_info_string ; 
 char* perf_usage_string ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int*,char const***) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC20 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC21 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

int FUNC24(int argc, const char **argv)
{
	int err;
	const char *cmd;
	char sbuf[STRERR_BUFSIZE];

	/* libsubcmd init */
	FUNC2("perf", PREFIX, PERF_EXEC_PATH, EXEC_PATH_ENVIRONMENT);
	FUNC11(PERF_PAGER_ENVIRONMENT);

	FUNC9(libperf_print);

	cmd = FUNC3(argv[0]);
	if (!cmd)
		cmd = "perf-help";

	FUNC19(FUNC23(NULL));

	/* Setting $PERF_CONFIG makes perf read _only_ the given config file. */
	config_exclusive_filename = FUNC5("PERF_CONFIG");

	err = FUNC12(perf_default_config, NULL);
	if (err)
		return err;
	FUNC17(NULL);

	/*
	 * "perf-xxxx" is the same as "perf xxxx", but we obviously:
	 *
	 *  - cannot take flags in between the "perf" and the "xxxx".
	 *  - cannot execute it externally (since it would just do
	 *    the same thing over again)
	 *
	 * So we just directly call the internal command handler. If that one
	 * fails to handle this, then maybe we just run a renamed perf binary
	 * that contains a dash in its name. To handle this scenario, we just
	 * fall through and ignore the "xxxx" part of the command string.
	 */
	if (FUNC21(cmd, "perf-")) {
		cmd += 5;
		argv[0] = cmd;
		FUNC6(argc, argv);
		/*
		 * If the command is handled, the above function does not
		 * return undo changes and fall through in such a case.
		 */
		cmd -= 5;
		argv[0] = cmd;
	}
	if (FUNC21(cmd, "trace")) {
#if defined(HAVE_LIBAUDIT_SUPPORT) || defined(HAVE_SYSCALL_TABLE_SUPPORT)
		setup_path();
		argv[0] = "trace";
		return cmd_trace(argc, argv);
#else
		FUNC4(stderr,
			"trace command not available: missing audit-libs devel package at build time.\n");
		goto out;
#endif
	}
	/* Look for flags.. */
	argv++;
	argc--;
	FUNC7(&argv, &argc, NULL);
	FUNC1();

	if (argc > 0) {
		if (FUNC21(argv[0], "--"))
			argv[0] += 2;
	} else {
		/* The user didn't specify a command; give them help */
		FUNC14("\n usage: %s\n\n", perf_usage_string);
		FUNC10();
		FUNC14("\n %s\n\n", perf_more_info_string);
		goto out;
	}
	cmd = argv[0];

	FUNC22();

	/*
	 * We use PATH to find perf commands, but we prepend some higher
	 * precedence paths: the "--exec-path" option, the PERF_EXEC_PATH
	 * environment, and the $(perfexecdir) from the Makefile at build
	 * time.
	 */
	FUNC18();
	/*
	 * Block SIGWINCH notifications so that the thread that wants it can
	 * unblock and get syscalls like select interrupted instead of waiting
	 * forever while the signal goes to some other non interested thread.
	 */
	FUNC15();

	FUNC13();

	while (1) {
		static int done_help;

		FUNC16(&argc, &argv);

		if (errno != ENOENT)
			break;

		if (!done_help) {
			cmd = argv[0] = FUNC8(cmd);
			done_help = 1;
		} else
			break;
	}

	FUNC4(stderr, "Failed to run command '%s': %s\n",
		cmd, FUNC20(errno, sbuf, sizeof(sbuf)));
out:
	return 1;
}