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
struct option {char* long_name; } ;
struct cmd_struct {char* cmd; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  CMD_DEBUGFS_DIR ; 
 int /*<<< orphan*/  CMD_EXEC_PATH ; 
 int /*<<< orphan*/  PERF_HTML_PATH ; 
 void* commands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* options ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  perf_usage_string ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int use_pager ; 
 int version_verbose ; 

__attribute__((used)) static int FUNC17(const char ***argv, int *argc, int *envchanged)
{
	int handled = 0;

	while (*argc > 0) {
		const char *cmd = (*argv)[0];
		if (cmd[0] != '-')
			break;

		/*
		 * For legacy reasons, the "version" and "help"
		 * commands can be written with "--" prepended
		 * to make them look like flags.
		 */
		if (!FUNC10(cmd, "--help") || !FUNC10(cmd, "--version"))
			break;

		/*
		 * Shortcut for '-h' and '-v' options to invoke help
		 * and version command.
		 */
		if (!FUNC10(cmd, "-h")) {
			(*argv)[0] = "--help";
			break;
		}

		if (!FUNC10(cmd, "-v")) {
			(*argv)[0] = "--version";
			break;
		}

		if (!FUNC10(cmd, "-vv")) {
			(*argv)[0] = "version";
			version_verbose = 1;
			break;
		}

		/*
		 * Check remaining flags.
		 */
		if (FUNC12(cmd, CMD_EXEC_PATH)) {
			cmd += FUNC11(CMD_EXEC_PATH);
			if (*cmd == '=')
				FUNC8(cmd + 1);
			else {
				FUNC7(FUNC3());
				FUNC1(0);
			}
		} else if (!FUNC10(cmd, "--html-path")) {
			FUNC7(FUNC13(PERF_HTML_PATH));
			FUNC1(0);
		} else if (!FUNC10(cmd, "-p") || !FUNC10(cmd, "--paginate")) {
			use_pager = 1;
		} else if (!FUNC10(cmd, "--no-pager")) {
			use_pager = 0;
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC10(cmd, "--debugfs-dir")) {
			if (*argc < 2) {
				FUNC2(stderr, "No directory given for --debugfs-dir.\n");
				FUNC16(perf_usage_string);
			}
			FUNC15((*argv)[1]);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (!FUNC10(cmd, "--buildid-dir")) {
			if (*argc < 2) {
				FUNC2(stderr, "No directory given for --buildid-dir.\n");
				FUNC16(perf_usage_string);
			}
			FUNC9((*argv)[1]);
			if (envchanged)
				*envchanged = 1;
			(*argv)++;
			(*argc)--;
		} else if (FUNC12(cmd, CMD_DEBUGFS_DIR)) {
			FUNC15(cmd + FUNC11(CMD_DEBUGFS_DIR));
			FUNC2(stderr, "dir: %s\n", FUNC14());
			if (envchanged)
				*envchanged = 1;
		} else if (!FUNC10(cmd, "--list-cmds")) {
			unsigned int i;

			for (i = 0; i < FUNC0(commands); i++) {
				struct cmd_struct *p = commands+i;
				FUNC5("%s ", p->cmd);
			}
			FUNC6('\n');
			FUNC1(0);
		} else if (!FUNC10(cmd, "--list-opts")) {
			unsigned int i;

			for (i = 0; i < FUNC0(options)-1; i++) {
				struct option *p = options+i;
				FUNC5("--%s ", p->long_name);
			}
			FUNC6('\n');
			FUNC1(0);
		} else if (!FUNC10(cmd, "--debug")) {
			if (*argc < 2) {
				FUNC2(stderr, "No variable specified for --debug.\n");
				FUNC16(perf_usage_string);
			}
			if (FUNC4((*argv)[1]))
				FUNC16(perf_usage_string);

			(*argv)++;
			(*argc)--;
		} else {
			FUNC2(stderr, "Unknown option: %s\n", cmd);
			FUNC16(perf_usage_string);
		}

		(*argv)++;
		(*argc)--;
		handled++;
	}
	return handled;
}