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
struct intlist {int dummy; } ;
struct TYPE_2__ {int priv_size; int sort_by_name; int try_vmlinux_path; } ;

/* Variables and functions */
 struct option const FUNC0 (float,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC1 () ; 
 struct option const FUNC2 (char,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC3 (char,char*,char const**,char*,char*) ; 
 int FUNC4 (int,char const**,struct intlist*) ; 
 int /*<<< orphan*/  dont_fork ; 
 int FUNC5 () ; 
 struct intlist* FUNC6 (char const*) ; 
 int FUNC7 (int,char const**,struct option const*,char const* const*,char const**,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,char const**) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  verbose ; 

int FUNC12(int argc, const char **argv)
{
	const char *test_usage[] = {
	"perf test [<options>] [{list <test-name-fragment>|[<test-name-fragments>|<test-numbers>]}]",
	NULL,
	};
	const char *skip = NULL;
	const struct option test_options[] = {
	FUNC3('s', "skip", &skip, "tests", "tests to skip"),
	FUNC2('v', "verbose", &verbose,
		    "be more verbose (show symbol address, etc)"),
	FUNC0('F', "dont-fork", &dont_fork,
		    "Do not fork for testcase"),
	FUNC1()
	};
	const char * const test_subcommands[] = { "list", NULL };
	struct intlist *skiplist = NULL;
        int ret = FUNC5();

        if (ret < 0)
                return ret;

	argc = FUNC7(argc, argv, test_options, test_subcommands, test_usage, 0);
	if (argc >= 1 && !FUNC10(argv[0], "list"))
		return FUNC8(argc - 1, argv + 1);

	symbol_conf.priv_size = sizeof(int);
	symbol_conf.sort_by_name = true;
	symbol_conf.try_vmlinux_path = true;

	if (FUNC11(NULL) < 0)
		return -1;

	if (skip != NULL)
		skiplist = FUNC6(skip);
	/*
	 * Tests that create BPF maps, for instance, need more than the 64K
	 * default:
	 */
	FUNC9();

	return FUNC4(argc, argv, skiplist);
}