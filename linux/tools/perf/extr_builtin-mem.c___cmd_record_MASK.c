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
struct perf_mem {int operation; scalar_t__ phys_addr; } ;
struct option {int dummy; } ;
struct TYPE_2__ {int record; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int MEM_OPERATION_LOAD ; 
 int MEM_OPERATION_STORE ; 
 struct option FUNC0 (char,char*,int*,char*) ; 
 struct option FUNC1 (char,char*,struct perf_mem**,char*,char*,int /*<<< orphan*/ ) ; 
 struct option FUNC2 () ; 
 struct option FUNC3 (char,char*,scalar_t__*,char*) ; 
 struct option FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  PARSE_OPT_KEEP_UNKNOWN ; 
 size_t PERF_MEM_EVENTS__LOAD ; 
 int PERF_MEM_EVENTS__MAX ; 
 size_t PERF_MEM_EVENTS__STORE ; 
 char** FUNC5 (int,int) ; 
 int FUNC6 (int,char const**) ; 
 int /*<<< orphan*/  FUNC7 (char const**) ; 
 int FUNC8 (int,char const**,struct option*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_record_events ; 
 TYPE_1__* perf_mem_events ; 
 int /*<<< orphan*/  perf_mem_events__loads_ldlat ; 
 char* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  record_mem_usage ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv, struct perf_mem *mem)
{
	int rec_argc, i = 0, j;
	const char **rec_argv;
	int ret;
	bool all_user = false, all_kernel = false;
	struct option options[] = {
	FUNC1('e', "event", &mem, "event",
		     "event selector. use 'perf mem record -e list' to list available events",
		     parse_record_events),
	FUNC4(0, "ldlat", &perf_mem_events__loads_ldlat, "mem-loads latency"),
	FUNC3('v', "verbose", &verbose,
		 "be more verbose (show counter open errors, etc)"),
	FUNC0('U', "all-user", &all_user, "collect only user level data"),
	FUNC0('K', "all-kernel", &all_kernel, "collect only kernel level data"),
	FUNC2()
	};

	argc = FUNC8(argc, argv, options, record_mem_usage,
			     PARSE_OPT_KEEP_UNKNOWN);

	rec_argc = argc + 9; /* max number of arguments */
	rec_argv = FUNC5(rec_argc + 1, sizeof(char *));
	if (!rec_argv)
		return -1;

	rec_argv[i++] = "record";

	if (mem->operation & MEM_OPERATION_LOAD)
		perf_mem_events[PERF_MEM_EVENTS__LOAD].record = true;

	if (mem->operation & MEM_OPERATION_STORE)
		perf_mem_events[PERF_MEM_EVENTS__STORE].record = true;

	if (perf_mem_events[PERF_MEM_EVENTS__LOAD].record)
		rec_argv[i++] = "-W";

	rec_argv[i++] = "-d";

	if (mem->phys_addr)
		rec_argv[i++] = "--phys-data";

	for (j = 0; j < PERF_MEM_EVENTS__MAX; j++) {
		if (!perf_mem_events[j].record)
			continue;

		if (!perf_mem_events[j].supported) {
			FUNC11("failed: event '%s' not supported\n",
			       FUNC9(j));
			FUNC7(rec_argv);
			return -1;
		}

		rec_argv[i++] = "-e";
		rec_argv[i++] = FUNC9(j);
	};

	if (all_user)
		rec_argv[i++] = "--all-user";

	if (all_kernel)
		rec_argv[i++] = "--all-kernel";

	for (j = 0; j < argc; j++, i++)
		rec_argv[i] = argv[j];

	if (verbose > 0) {
		FUNC10("calling: record ");

		while (rec_argv[j]) {
			FUNC10("%s ", rec_argv[j]);
			j++;
		}
		FUNC10("\n");
	}

	ret = FUNC6(i, rec_argv);
	FUNC7(rec_argv);
	return ret;
}