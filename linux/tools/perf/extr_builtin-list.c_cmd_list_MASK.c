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
 struct option FUNC0 (char,char*,int*,char*) ; 
 struct option FUNC1 () ; 
 struct option FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  PARSE_OPT_HIDDEN ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 int /*<<< orphan*/  PERF_COUNT_HW_MAX ; 
 int /*<<< orphan*/  PERF_COUNT_SW_MAX ; 
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 int /*<<< orphan*/  PERF_TYPE_SOFTWARE ; 
 scalar_t__ FUNC3 (char**,char*,char const*) ; 
 int desc_flag ; 
 int details_flag ; 
 int /*<<< orphan*/  event_symbols_hw ; 
 int /*<<< orphan*/  event_symbols_sw ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int,int) ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int,char const**,struct option*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct option*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* FUNC18 (char const*,char) ; 
 scalar_t__ FUNC19 (char const*,char*) ; 
 char* FUNC20 (char const*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC21(int argc, const char **argv)
{
	int i;
	bool raw_dump = false;
	bool long_desc_flag = false;
	struct option list_options[] = {
		FUNC0(0, "raw-dump", &raw_dump, "Dump raw events"),
		FUNC0('d', "desc", &desc_flag,
			    "Print extra event descriptions. --no-desc to not print."),
		FUNC0('v', "long-desc", &long_desc_flag,
			    "Print longer event descriptions."),
		FUNC0(0, "details", &details_flag,
			    "Print information on the perf event names and expressions used internally by events."),
		FUNC2(0, "debug", &verbose,
			     "Enable debugging output"),
		FUNC1()
	};
	const char * const list_usage[] = {
		"perf list [<options>] [hw|sw|cache|tracepoint|pmu|sdt|event_glob]",
		NULL
	};

	FUNC16(list_options, 0, "raw-dump", PARSE_OPT_HIDDEN);

	argc = FUNC7(argc, argv, list_options, list_usage,
			     PARSE_OPT_STOP_AT_NON_OPTION);

	FUNC17();

	if (!raw_dump && FUNC6())
		FUNC15("\nList of pre-defined events (to be used in -e):\n\n");

	if (argc == 0) {
		FUNC8(NULL, raw_dump, !desc_flag, long_desc_flag,
				details_flag);
		return 0;
	}

	for (i = 0; i < argc; ++i) {
		char *sep, *s;

		if (FUNC19(argv[i], "tracepoint") == 0)
			FUNC14(NULL, NULL, raw_dump);
		else if (FUNC19(argv[i], "hw") == 0 ||
			 FUNC19(argv[i], "hardware") == 0)
			FUNC12(NULL, PERF_TYPE_HARDWARE,
					event_symbols_hw, PERF_COUNT_HW_MAX, raw_dump);
		else if (FUNC19(argv[i], "sw") == 0 ||
			 FUNC19(argv[i], "software") == 0) {
			FUNC12(NULL, PERF_TYPE_SOFTWARE,
					event_symbols_sw, PERF_COUNT_SW_MAX, raw_dump);
			FUNC13(NULL, raw_dump);
		} else if (FUNC19(argv[i], "cache") == 0 ||
			 FUNC19(argv[i], "hwcache") == 0)
			FUNC9(NULL, raw_dump);
		else if (FUNC19(argv[i], "pmu") == 0)
			FUNC10(NULL, raw_dump, !desc_flag,
						long_desc_flag, details_flag);
		else if (FUNC19(argv[i], "sdt") == 0)
			FUNC11(NULL, NULL, raw_dump);
		else if (FUNC19(argv[i], "metric") == 0 || FUNC19(argv[i], "metrics") == 0)
			FUNC5(true, false, NULL, raw_dump, details_flag);
		else if (FUNC19(argv[i], "metricgroup") == 0 || FUNC19(argv[i], "metricgroups") == 0)
			FUNC5(false, true, NULL, raw_dump, details_flag);
		else if ((sep = FUNC18(argv[i], ':')) != NULL) {
			int sep_idx;

			if (sep == NULL) {
				FUNC8(argv[i], raw_dump, !desc_flag,
							long_desc_flag,
							details_flag);
				continue;
			}
			sep_idx = sep - argv[i];
			s = FUNC20(argv[i]);
			if (s == NULL)
				return -1;

			s[sep_idx] = '\0';
			FUNC14(s, s + sep_idx + 1, raw_dump);
			FUNC11(s, s + sep_idx + 1, raw_dump);
			FUNC5(true, true, s, raw_dump, details_flag);
			FUNC4(s);
		} else {
			if (FUNC3(&s, "*%s*", argv[i]) < 0) {
				FUNC15("Critical: Not enough memory! Trying to continue...\n");
				continue;
			}
			FUNC12(s, PERF_TYPE_HARDWARE,
					    event_symbols_hw, PERF_COUNT_HW_MAX, raw_dump);
			FUNC12(s, PERF_TYPE_SOFTWARE,
					    event_symbols_sw, PERF_COUNT_SW_MAX, raw_dump);
			FUNC13(s, raw_dump);
			FUNC9(s, raw_dump);
			FUNC10(s, raw_dump, !desc_flag,
						long_desc_flag,
						details_flag);
			FUNC14(NULL, s, raw_dump);
			FUNC11(NULL, s, raw_dump);
			FUNC5(true, true, s, raw_dump, details_flag);
			FUNC4(s);
		}
	}
	return 0;
}