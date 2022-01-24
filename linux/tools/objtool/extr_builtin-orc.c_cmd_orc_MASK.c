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
 int FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  check_options ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  orc_usage ; 
 int FUNC2 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(int argc, const char **argv)
{
	const char *objname;

	argc--; argv++;
	if (argc <= 0)
		FUNC5(orc_usage, check_options);

	if (!FUNC4(argv[0], "gen", 3)) {
		argc = FUNC2(argc, argv, check_options, orc_usage, 0);
		if (argc != 1)
			FUNC5(orc_usage, check_options);

		objname = argv[0];

		return FUNC0(objname, true);
	}

	if (!FUNC3(argv[0], "dump")) {
		if (argc != 2)
			FUNC5(orc_usage, check_options);

		objname = argv[1];

		return FUNC1(objname);
	}

	FUNC5(orc_usage, check_options);

	return 0;
}