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
struct check {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct check**) ; 
 struct check** check_table ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct check*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct check*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

void FUNC6(bool warn, bool error, const char *arg)
{
	int i;
	const char *name = arg;
	bool enable = true;

	if ((FUNC5(arg, "no-", 3) == 0)
	    || (FUNC5(arg, "no_", 3) == 0)) {
		name = arg + 3;
		enable = false;
	}

	for (i = 0; i < FUNC0(check_table); i++) {
		struct check *c = check_table[i];

		if (FUNC4(c->name, name)) {
			if (enable)
				FUNC3(c, warn, error);
			else
				FUNC2(c, warn, error);
			return;
		}
	}

	FUNC1("Unrecognized check name \"%s\"\n", name);
}