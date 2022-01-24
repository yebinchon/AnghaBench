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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int*,char const***) ; 
 scalar_t__ help ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(int argc, const char **argv)
{
	static const char *UNUSED = "OBJTOOL_NOT_IMPLEMENTED";

	/* libsubcmd init */
	FUNC1("objtool", UNUSED, UNUSED, UNUSED);
	FUNC4(UNUSED);

	argv++;
	argc--;
	FUNC3(&argc, &argv);

	if (!argc || help)
		FUNC0();

	FUNC2(argc, argv);

	return 0;
}