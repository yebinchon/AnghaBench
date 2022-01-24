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
struct perf_attr_details {int verbose; int freq; int event_group; int force; int trace_fields; } ;
struct option {int dummy; } ;

/* Variables and functions */
 struct option const FUNC0 (float,char*,int*,char*) ; 
 struct option const FUNC1 () ; 
 struct option const FUNC2 (char,char*,int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct perf_attr_details*) ; 
 int /*<<< orphan*/  input_name ; 
 int FUNC4 (int,char const**,struct option const*,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const* const*,struct option const*) ; 
 int /*<<< orphan*/  FUNC6 (char const* const*,struct option const*,char*) ; 

int FUNC7(int argc, const char **argv)
{
	struct perf_attr_details details = { .verbose = false, };
	const struct option options[] = {
	FUNC2('i', "input", &input_name, "file", "Input file name"),
	FUNC0('F', "freq", &details.freq, "Show the sample frequency"),
	FUNC0('v', "verbose", &details.verbose,
		    "Show all event attr details"),
	FUNC0('g', "group", &details.event_group,
		    "Show event group information"),
	FUNC0('f', "force", &details.force, "don't complain, do it"),
	FUNC0(0, "trace-fields", &details.trace_fields, "Show tracepoint fields"),
	FUNC1()
	};
	const char * const evlist_usage[] = {
		"perf evlist [<options>]",
		NULL
	};

	argc = FUNC4(argc, argv, options, evlist_usage, 0);
	if (argc)
		FUNC5(evlist_usage, options);

	if (details.event_group && (details.verbose || details.freq)) {
		FUNC6(evlist_usage, options,
			"--group option is not compatible with other options\n");
	}

	return FUNC3(input_name, &details);
}