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
 int LONG_MAX ; 
 int LONG_MIN ; 
 int OPTARG_BALANCE_PERFORMANCE ; 
 int OPTARG_BALANCE_POWER ; 
 int OPTARG_NORMAL ; 
 int OPTARG_PERFORMANCE ; 
 int OPTARG_POWER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(char *s)
{
	int i;
	char *endptr;

	if (!FUNC2(s, "default", 7))
		return OPTARG_NORMAL;

	if (!FUNC2(s, "normal", 6))
		return OPTARG_NORMAL;

	if (!FUNC2(s, "power", 9))
		return OPTARG_POWER;

	if (!FUNC2(s, "balance-power", 17))
		return OPTARG_BALANCE_POWER;

	if (!FUNC2(s, "balance-performance", 19))
		return OPTARG_BALANCE_PERFORMANCE;

	if (!FUNC2(s, "performance", 11))
		return OPTARG_PERFORMANCE;

	i = FUNC3(s, &endptr, 0);
	if (s == endptr) {
		FUNC1(stderr, "no digits in \"%s\"\n", s);
		FUNC4();
	}
	if (i == LONG_MIN || i == LONG_MAX)
		FUNC0(-1, "%s", s);

	if (i > 0xFF)
		FUNC0(-1, "%d (0x%x) must be < 256", i, i);

	if (i < 0)
		FUNC0(-1, "%d (0x%x) must be >= 0", i, i);
	return i;
}