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
struct utsname {char const* machine; } ;
struct stat {int dummy; } ;
struct cmd_struct {char const* cmd; unsigned int (* main ) (int,char const**) ;scalar_t__ needs_root; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cmd_struct*) ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  PACKAGE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 scalar_t__ base_cpu ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct cmd_struct* commands ; 
 int /*<<< orphan*/  cpupower_cpu_info ; 
 scalar_t__ cpus_chosen ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*,char const***) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int run_as_root ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC13 (char const*,char const*) ; 
 unsigned int FUNC14 (int,char const**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (struct utsname*) ; 

int FUNC19(int argc, const char *argv[])
{
	const char *cmd;
	unsigned int i, ret;
	struct stat statbuf;
	struct utsname uts;
	char pathname[32];

	cpus_chosen = FUNC2(FUNC15(_SC_NPROCESSORS_CONF));

	argc--;
	argv += 1;

	FUNC7(&argc, &argv);

	cmd = argv[0];

	if (argc < 1) {
		FUNC8();
		return EXIT_FAILURE;
	}

	FUNC10(LC_ALL, "");
	FUNC17(PACKAGE);

	/* Turn "perf cmd --help" into "perf help cmd" */
	if (argc > 1 && !FUNC13(argv[1], "--help")) {
		argv[1] = argv[0];
		argv[0] = cmd = "help";
	}

	base_cpu = FUNC9();
	if (base_cpu < 0) {
		FUNC4(stderr, "%s", FUNC1("No valid cpus found.\n"));
		return EXIT_FAILURE;
	}

	FUNC5(&cpupower_cpu_info);
	run_as_root = !FUNC6();
	if (run_as_root) {
		ret = FUNC18(&uts);
		FUNC11(pathname, "/dev/cpu/%d/msr", base_cpu);
		if (!ret && !FUNC13(uts.machine, "x86_64") &&
		    FUNC12(pathname, &statbuf) != 0) {
			if (FUNC16("modprobe msr") == -1)
	FUNC4(stderr, "%s", FUNC1("MSR access not available.\n"));
		}
	}

	for (i = 0; i < FUNC0(commands); i++) {
		struct cmd_struct *p = commands + i;
		if (FUNC13(p->cmd, cmd))
			continue;
		if (!run_as_root && p->needs_root) {
			FUNC4(stderr, FUNC1("Subcommand %s needs root "
					  "privileges\n"), cmd);
			return EXIT_FAILURE;
		}
		ret = p->main(argc, argv);
		if (cpus_chosen)
			FUNC3(cpus_chosen);
		return ret;
	}
	FUNC8();
	return EXIT_FAILURE;
}