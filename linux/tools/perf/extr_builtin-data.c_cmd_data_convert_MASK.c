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
struct perf_data_convert_opts {int force; int all; } ;
struct option {int dummy; } ;

/* Variables and functions */
 struct option const FUNC0 (float,char*,int*,char*) ; 
 struct option const FUNC1 () ; 
 struct option const FUNC2 (char,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC3 (char,char*,char const**,char*,char*) ; 
 int FUNC4 (char const*,char const*,struct perf_data_convert_opts*) ; 
 int /*<<< orphan*/  data_convert_usage ; 
 char const* input_name ; 
 int FUNC5 (int,char const**,struct option const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct option const*) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC8(int argc, const char **argv)
{
	const char *to_ctf     = NULL;
	struct perf_data_convert_opts opts = {
		.force = false,
		.all = false,
	};
	const struct option options[] = {
		FUNC2('v', "verbose", &verbose, "be more verbose"),
		FUNC3('i', "input", &input_name, "file", "input file name"),
#ifdef HAVE_LIBBABELTRACE_SUPPORT
		OPT_STRING(0, "to-ctf", &to_ctf, NULL, "Convert to CTF format"),
#endif
		FUNC0('f', "force", &opts.force, "don't complain, do it"),
		FUNC0(0, "all", &opts.all, "Convert all events"),
		FUNC1()
	};

#ifndef HAVE_LIBBABELTRACE_SUPPORT
	FUNC6("No conversion support compiled in. perf should be compiled with environment variables LIBBABELTRACE=1 and LIBBABELTRACE_DIR=/path/to/libbabeltrace/\n");
	return -1;
#endif

	argc = FUNC5(argc, argv, options,
			     data_convert_usage, 0);
	if (argc) {
		FUNC7(data_convert_usage, options);
		return -1;
	}

	if (to_ctf) {
#ifdef HAVE_LIBBABELTRACE_SUPPORT
		return bt_convert__perf2ctf(input_name, to_ctf, &opts);
#else
		FUNC6("The libbabeltrace support is not compiled in.\n");
		return -1;
#endif
	}

	return 0;
}