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
 scalar_t__ errno ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int FUNC4 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *name, const char *value)
{
	char *endptr;
	int res;

	/* No support for C-style ouptut */

	if (json_output) {
		if (!value) {
			FUNC1(json_wtr, name);
			return;
		}
		errno = 0;
		res = FUNC4(value, &endptr, 0);
		if (!errno && *endptr == '\n')
			FUNC0(json_wtr, name, res);
		else
			FUNC2(json_wtr, name, value);
	} else {
		if (value)
			FUNC3("%s is set to %s\n", name, value);
		else
			FUNC3("%s is not set\n", name);
	}
}