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
struct option {int dummy; } ;
struct TYPE_2__ {int sort_by_name; int /*<<< orphan*/ * vmlinux_name; int /*<<< orphan*/  try_vmlinux_path; } ;

/* Variables and functions */
 struct option const FUNC0 () ; 
 struct option const FUNC1 (char,char*,int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int,char const**) ; 
 int FUNC3 (int,char const**,struct option const*,char const* const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  FUNC5 (char const* const*,struct option const*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC6(int argc, const char **argv)
{
	const struct option options[] = {
	FUNC1('v', "verbose", &verbose, "be more verbose (show counter open errors, etc)"),
	FUNC0()
	};
	const char * const kallsyms_usage[] = {
		"perf kallsyms [<options>] symbol_name",
		NULL
	};

	argc = FUNC3(argc, argv, options, kallsyms_usage, 0);
	if (argc < 1)
		FUNC5(kallsyms_usage, options);

	symbol_conf.sort_by_name = true;
	symbol_conf.try_vmlinux_path = (symbol_conf.vmlinux_name == NULL);
	if (FUNC4(NULL) < 0)
		return -1;

	return FUNC2(argc, argv);
}