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
struct option {int dummy; } ;
typedef  enum help_format { ____Placeholder_help_format } help_format ;

/* Variables and functions */
#define  HELP_FORMAT_INFO 131 
#define  HELP_FORMAT_MAN 130 
#define  HELP_FORMAT_NONE 129 
#define  HELP_FORMAT_WEB 128 
 struct option FUNC0 (char,char*,int*,char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (char,char*,int*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_cmds ; 
 int /*<<< orphan*/  other_cmds ; 
 int FUNC6 (int,char const**,struct option*,char const* const*,char const**,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  perf_help_config ; 
 char* perf_more_info_string ; 
 char* perf_usage_string ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char const*) ; 
 int FUNC10 (char const*) ; 
 int FUNC11 (char const*) ; 

int FUNC12(int argc, const char **argv)
{
	bool show_all = false;
	enum help_format help_format = HELP_FORMAT_MAN;
	struct option builtin_help_options[] = {
	FUNC0('a', "all", &show_all, "print all available commands"),
	FUNC2('m', "man", &help_format, "show man page", HELP_FORMAT_MAN),
	FUNC2('w', "web", &help_format, "show manual in web browser",
			HELP_FORMAT_WEB),
	FUNC2('i', "info", &help_format, "show info page",
			HELP_FORMAT_INFO),
	FUNC1(),
	};
	const char * const builtin_help_subcommands[] = {
		"buildid-cache", "buildid-list", "diff", "evlist", "help", "list",
		"record", "report", "bench", "stat", "timechart", "top", "annotate",
		"script", "sched", "kallsyms", "kmem", "lock", "kvm", "test", "inject", "mem", "data",
#ifdef HAVE_LIBELF_SUPPORT
		"probe",
#endif
#if defined(HAVE_LIBAUDIT_SUPPORT) || defined(HAVE_SYSCALL_TABLE_SUPPORT)
		"trace",
#endif
	NULL };
	const char *builtin_help_usage[] = {
		"perf help [--all] [--man|--web|--info] [command]",
		NULL
	};
	int rc;

	FUNC5("perf-", &main_cmds, &other_cmds);

	rc = FUNC7(perf_help_config, &help_format);
	if (rc)
		return rc;

	argc = FUNC6(argc, argv, builtin_help_options,
			builtin_help_subcommands, builtin_help_usage, 0);

	if (show_all) {
		FUNC8("\n Usage: %s\n\n", perf_usage_string);
		FUNC3("perf commands", &main_cmds, &other_cmds);
		FUNC8(" %s\n\n", perf_more_info_string);
		return 0;
	}

	if (!argv[0]) {
		FUNC8("\n usage: %s\n\n", perf_usage_string);
		FUNC4();
		FUNC8("\n %s\n\n", perf_more_info_string);
		return 0;
	}

	switch (help_format) {
	case HELP_FORMAT_MAN:
		rc = FUNC11(argv[0]);
		break;
	case HELP_FORMAT_INFO:
		rc = FUNC10(argv[0]);
		break;
	case HELP_FORMAT_WEB:
		rc = FUNC9(argv[0]);
		break;
	case HELP_FORMAT_NONE:
		/* fall-through */
	default:
		rc = -1;
		break;
	}

	return rc;
}