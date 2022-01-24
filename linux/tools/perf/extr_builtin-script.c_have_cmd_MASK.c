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
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char const**,int) ; 
 int FUNC3 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  record_options ; 
 int system_wide ; 

__attribute__((used)) static int FUNC5(int argc, const char **argv)
{
	char **__argv = FUNC1(sizeof(const char *) * argc);

	if (!__argv) {
		FUNC4("malloc failed\n");
		return -1;
	}

	FUNC2(__argv, argv, sizeof(const char *) * argc);
	argc = FUNC3(argc, (const char **)__argv, record_options,
			     NULL, PARSE_OPT_STOP_AT_NON_OPTION);
	FUNC0(__argv);

	system_wide = (argc == 0);

	return 0;
}