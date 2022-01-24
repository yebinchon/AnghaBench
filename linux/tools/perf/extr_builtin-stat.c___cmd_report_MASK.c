#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct perf_session {int /*<<< orphan*/  evlist; } ;
struct option {int dummy; } ;
struct TYPE_6__ {char* path; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {struct perf_session* session; int /*<<< orphan*/  tool; TYPE_3__ data; int /*<<< orphan*/  aggr_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGGR_CORE ; 
 int /*<<< orphan*/  AGGR_DIE ; 
 int /*<<< orphan*/  AGGR_NONE ; 
 int /*<<< orphan*/  AGGR_SOCKET ; 
 scalar_t__ FUNC0 (struct perf_session*) ; 
 struct option const FUNC1 () ; 
 struct option const FUNC2 (char,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct option const FUNC3 (char,char*,char**,char*,char*) ; 
 int /*<<< orphan*/  PERF_DATA_MODE_READ ; 
 int FUNC4 (struct perf_session*) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evsel_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct stat*) ; 
 char* input_name ; 
 int FUNC7 (int,char const**,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_session*) ; 
 struct perf_session* FUNC9 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct perf_session*) ; 
 TYPE_2__ perf_stat ; 
 TYPE_1__ stat_config ; 
 int /*<<< orphan*/  stat_report_usage ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(int argc, const char **argv)
{
	struct perf_session *session;
	const struct option options[] = {
	FUNC3('i', "input", &input_name, "file", "input file name"),
	FUNC2(0, "per-socket", &perf_stat.aggr_mode,
		     "aggregate counts per processor socket", AGGR_SOCKET),
	FUNC2(0, "per-die", &perf_stat.aggr_mode,
		     "aggregate counts per processor die", AGGR_DIE),
	FUNC2(0, "per-core", &perf_stat.aggr_mode,
		     "aggregate counts per physical processor core", AGGR_CORE),
	FUNC2('A', "no-aggr", &perf_stat.aggr_mode,
		     "disable CPU count aggregation", AGGR_NONE),
	FUNC1()
	};
	struct stat st;
	int ret;

	argc = FUNC7(argc, argv, options, stat_report_usage, 0);

	if (!input_name || !FUNC11(input_name)) {
		if (!FUNC6(STDIN_FILENO, &st) && FUNC5(st.st_mode))
			input_name = "-";
		else
			input_name = "perf.data";
	}

	perf_stat.data.path = input_name;
	perf_stat.data.mode = PERF_DATA_MODE_READ;

	session = FUNC9(&perf_stat.data, false, &perf_stat.tool);
	if (FUNC0(session))
		return FUNC4(session);

	perf_stat.session  = session;
	stat_config.output = stderr;
	evsel_list         = session->evlist;

	ret = FUNC10(session);
	if (ret)
		return ret;

	FUNC8(session);
	return 0;
}