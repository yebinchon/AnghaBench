#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct result {int member_0; int member_1; char* member_2; char* member_3; char* member_4; } ;
struct machine {int dummy; } ;
struct hists {int dummy; } ;
struct evsel {int dummy; } ;
struct callchain_result {int member_0; int member_1; char* member_2; char* member_3; char* member_4; } ;
struct TYPE_14__ {int use_callchain; int cumulate_callchain; } ;
struct TYPE_13__ {char* member_0; char* member_1; } ;
struct TYPE_12__ {char* member_0; char* member_1; } ;
struct TYPE_11__ {char* member_0; char* member_1; } ;
struct TYPE_10__ {char* member_0; char* member_1; } ;
struct TYPE_9__ {char* member_0; char* member_1; } ;
struct TYPE_8__ {char* member_0; char* member_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct result*) ; 
 int /*<<< orphan*/  CALLCHAIN ; 
 int FUNC1 (struct hists*,struct machine*) ; 
 int /*<<< orphan*/  callchain_param ; 
 int /*<<< orphan*/  callchain_param_default ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hists*) ; 
 int FUNC4 (struct hists*,struct result*,int /*<<< orphan*/ ,struct result*,int /*<<< orphan*/ ) ; 
 struct hists* FUNC5 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC6 (struct evsel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_7__ symbol_conf ; 

__attribute__((used)) static int FUNC9(struct evsel *evsel, struct machine *machine)
{
	int err;
	struct hists *hists = FUNC5(evsel);
	/*
	 * expected output:
	 *
	 * Children      Self  Command  Shared Object                   Symbol
	 * ========  ========  =======  =============  =======================
	 *   70.00%    20.00%     perf  perf           [.] main
	 *              |
	 *              --- main
	 *
	 *   50.00%     0.00%     perf  perf           [.] run_command
	 *              |
	 *              --- run_command
	 *                  main
	 *
	 *   30.00%    10.00%     bash  bash           [.] main
	 *              |
	 *              --- main
	 *
	 *   30.00%    10.00%     perf  perf           [.] cmd_record
	 *              |
	 *              --- cmd_record
	 *                  run_command
	 *                  main
	 *
	 *   20.00%     0.00%     bash  libc           [.] malloc
	 *              |
	 *              --- malloc
	 *                 |
	 *                 |--50.00%-- xmalloc
	 *                 |           main
	 *                  --50.00%-- main
	 *
	 *   10.00%    10.00%     bash  [kernel]       [k] page_fault
	 *              |
	 *              --- page_fault
	 *                  malloc
	 *                  main
	 *
	 *   10.00%    10.00%     bash  bash           [.] xmalloc
	 *              |
	 *              --- xmalloc
	 *                  malloc
	 *                  xmalloc     <--- NOTE: there's a cycle
	 *                  malloc
	 *                  xmalloc
	 *                  main
	 *
	 *   10.00%     0.00%     perf  [kernel]       [k] sys_perf_event_open
	 *              |
	 *              --- sys_perf_event_open
	 *                  run_command
	 *                  main
	 *
	 *   10.00%    10.00%     perf  [kernel]       [k] page_fault
	 *              |
	 *              --- page_fault
	 *                  sys_perf_event_open
	 *                  run_command
	 *                  main
	 *
	 *   10.00%    10.00%     perf  [kernel]       [k] schedule
	 *              |
	 *              --- schedule
	 *                  run_command
	 *                  main
	 *
	 *   10.00%    10.00%     perf  libc           [.] free
	 *              |
	 *              --- free
	 *                  cmd_record
	 *                  run_command
	 *                  main
	 *
	 *   10.00%    10.00%     perf  libc           [.] malloc
	 *              |
	 *              --- malloc
	 *                  cmd_record
	 *                  run_command
	 *                  main
	 *
	 */
	struct result expected[] = {
		{ 7000, 2000, "perf", "perf",     "main" },
		{ 5000,    0, "perf", "perf",     "run_command" },
		{ 3000, 1000, "bash", "bash",     "main" },
		{ 3000, 1000, "perf", "perf",     "cmd_record" },
		{ 2000,    0, "bash", "libc",     "malloc" },
		{ 1000, 1000, "bash", "[kernel]", "page_fault" },
		{ 1000, 1000, "bash", "bash",     "xmalloc" },
		{ 1000,    0, "perf", "[kernel]", "sys_perf_event_open" },
		{ 1000, 1000, "perf", "[kernel]", "page_fault" },
		{ 1000, 1000, "perf", "[kernel]", "schedule" },
		{ 1000, 1000, "perf", "libc",     "free" },
		{ 1000, 1000, "perf", "libc",     "malloc" },
	};
	struct callchain_result expected_callchain[] = {
		{
			1, {	{ "perf",     "main" }, },
		},
		{
			2, {	{ "perf",     "run_command" },
				{ "perf",     "main" }, },
		},
		{
			1, {	{ "bash",     "main" }, },
		},
		{
			3, {	{ "perf",     "cmd_record" },
				{ "perf",     "run_command" },
				{ "perf",     "main" }, },
		},
		{
			4, {	{ "libc",     "malloc" },
				{ "bash",     "xmalloc" },
				{ "bash",     "main" },
				{ "bash",     "main" }, },
		},
		{
			3, {	{ "[kernel]", "page_fault" },
				{ "libc",     "malloc" },
				{ "bash",     "main" }, },
		},
		{
			6, {	{ "bash",     "xmalloc" },
				{ "libc",     "malloc" },
				{ "bash",     "xmalloc" },
				{ "libc",     "malloc" },
				{ "bash",     "xmalloc" },
				{ "bash",     "main" }, },
		},
		{
			3, {	{ "[kernel]", "sys_perf_event_open" },
				{ "perf",     "run_command" },
				{ "perf",     "main" }, },
		},
		{
			4, {	{ "[kernel]", "page_fault" },
				{ "[kernel]", "sys_perf_event_open" },
				{ "perf",     "run_command" },
				{ "perf",     "main" }, },
		},
		{
			3, {	{ "[kernel]", "schedule" },
				{ "perf",     "run_command" },
				{ "perf",     "main" }, },
		},
		{
			4, {	{ "libc",     "free" },
				{ "perf",     "cmd_record" },
				{ "perf",     "run_command" },
				{ "perf",     "main" }, },
		},
		{
			4, {	{ "libc",     "malloc" },
				{ "perf",     "cmd_record" },
				{ "perf",     "run_command" },
				{ "perf",     "main" }, },
		},
	};

	symbol_conf.use_callchain = true;
	symbol_conf.cumulate_callchain = true;
	FUNC6(evsel, CALLCHAIN);

	FUNC8(NULL);

	callchain_param = callchain_param_default;
	FUNC2(&callchain_param);

	err = FUNC1(hists, machine);
	if (err < 0)
		goto out;

	err = FUNC4(hists, expected, FUNC0(expected),
		      expected_callchain, FUNC0(expected_callchain));

out:
	FUNC3(hists);
	FUNC7();
	return err;
}