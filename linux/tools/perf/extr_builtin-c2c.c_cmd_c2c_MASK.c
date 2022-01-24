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
 int /*<<< orphan*/  c2c_options ; 
 int /*<<< orphan*/  c2c_usage ; 
 int FUNC0 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char const**) ; 
 int FUNC2 (int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(int argc, const char **argv)
{
	argc = FUNC0(argc, argv, c2c_options, c2c_usage,
			     PARSE_OPT_STOP_AT_NON_OPTION);

	if (!argc)
		FUNC4(c2c_usage, c2c_options);

	if (!FUNC3(argv[0], "rec", 3)) {
		return FUNC1(argc, argv);
	} else if (!FUNC3(argv[0], "rep", 3)) {
		return FUNC2(argc, argv);
	} else {
		FUNC4(c2c_usage, c2c_options);
	}

	return 0;
}