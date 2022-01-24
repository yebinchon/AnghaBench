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
 struct option const FUNC0 (char,char*,int*,char*) ; 
 struct option const FUNC1 () ; 
 struct option const FUNC2 (char,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC3 (char,char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  input_name ; 
 int FUNC4 (int,char const**,struct option const*,char const* const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC8(int argc, const char **argv)
{
	bool show_kernel = false;
	bool with_hits = false;
	bool force = false;
	const struct option options[] = {
	FUNC0('H', "with-hits", &with_hits, "Show only DSOs with hits"),
	FUNC3('i', "input", &input_name, "file", "input file name"),
	FUNC0('f', "force", &force, "don't complain, do it"),
	FUNC0('k', "kernel", &show_kernel, "Show current kernel build id"),
	FUNC2('v', "verbose", &verbose, "be more verbose"),
	FUNC1()
	};
	const char * const buildid_list_usage[] = {
		"perf buildid-list [<options>]",
		NULL
	};

	argc = FUNC4(argc, argv, options, buildid_list_usage, 0);
	FUNC6();

	if (show_kernel)
		return !(FUNC7(stdout) > 0);

	return FUNC5(force, with_hits);
}