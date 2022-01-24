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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 scalar_t__ dump_only ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char**) ; 
 int FUNC3 () ; 
 scalar_t__ list_header_only ; 
 int optind ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(int argc, char **argv)
{
	outf = stderr;
	FUNC0(argc, argv);

	if (!quiet)
		FUNC5();

	FUNC6();

	FUNC7();

	/* dump counters and exit */
	if (dump_only)
		return FUNC3();

	/* list header and exit */
	if (list_header_only) {
		FUNC4(",");
		FUNC1();
		return 0;
	}

	/*
	 * if any params left, it must be a command to fork
	 */
	if (argc - optind)
		return FUNC2(argv + optind);
	else
		FUNC8();

	return 0;
}