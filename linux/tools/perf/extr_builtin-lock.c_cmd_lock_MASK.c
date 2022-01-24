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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 unsigned int LOCKHASH_SIZE ; 
 struct option const FUNC1 (char,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC2 () ; 
 struct option const FUNC3 (char,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC4 (struct option const*) ; 
 struct option const FUNC5 (char,char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 int FUNC6 (int,char const**) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int,char const**) ; 
 int /*<<< orphan*/  dump_trace ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  info_map ; 
 int /*<<< orphan*/  info_threads ; 
 int /*<<< orphan*/  input_name ; 
 scalar_t__ lockhash_table ; 
 int FUNC9 (int,char const**,struct option const*,char const* const*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char const**,struct option const*,char const* const*,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  report_lock_ops ; 
 int /*<<< orphan*/  sort_key ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int) ; 
 int /*<<< orphan*/ * trace_handler ; 
 int /*<<< orphan*/  FUNC13 (char const**,struct option const*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC14(int argc, const char **argv)
{
	const struct option lock_options[] = {
	FUNC5('i', "input", &input_name, "file", "input file name"),
	FUNC3('v', "verbose", &verbose, "be more verbose (show symbol address, etc)"),
	FUNC1('D', "dump-raw-trace", &dump_trace, "dump raw trace in ASCII"),
	FUNC1('f', "force", &force, "don't complain, do it"),
	FUNC2()
	};

	const struct option info_options[] = {
	FUNC1('t', "threads", &info_threads,
		    "dump thread list in perf.data"),
	FUNC1('m', "map", &info_map,
		    "map of lock instances (address:name table)"),
	FUNC4(lock_options)
	};

	const struct option report_options[] = {
	FUNC5('k', "key", &sort_key, "acquired",
		    "key for sorting (acquired / contended / avg_wait / wait_total / wait_max / wait_min)"),
	/* TODO: type */
	FUNC4(lock_options)
	};

	const char * const info_usage[] = {
		"perf lock info [<options>]",
		NULL
	};
	const char *const lock_subcommands[] = { "record", "report", "script",
						 "info", NULL };
	const char *lock_usage[] = {
		NULL,
		NULL
	};
	const char * const report_usage[] = {
		"perf lock report [<options>]",
		NULL
	};
	unsigned int i;
	int rc = 0;

	for (i = 0; i < LOCKHASH_SIZE; i++)
		FUNC0(lockhash_table + i);

	argc = FUNC10(argc, argv, lock_options, lock_subcommands,
					lock_usage, PARSE_OPT_STOP_AT_NON_OPTION);
	if (!argc)
		FUNC13(lock_usage, lock_options);

	if (!FUNC12(argv[0], "rec", 3)) {
		return FUNC6(argc, argv);
	} else if (!FUNC12(argv[0], "report", 6)) {
		trace_handler = &report_lock_ops;
		if (argc) {
			argc = FUNC9(argc, argv,
					     report_options, report_usage, 0);
			if (argc)
				FUNC13(report_usage, report_options);
		}
		rc = FUNC7(false);
	} else if (!FUNC11(argv[0], "script")) {
		/* Aliased to 'perf script' */
		return FUNC8(argc, argv);
	} else if (!FUNC11(argv[0], "info")) {
		if (argc) {
			argc = FUNC9(argc, argv,
					     info_options, info_usage, 0);
			if (argc)
				FUNC13(info_usage, info_options);
		}
		/* recycling report_lock_ops */
		trace_handler = &report_lock_ops;
		rc = FUNC7(true);
	} else {
		FUNC13(lock_usage, lock_options);
	}

	return rc;
}