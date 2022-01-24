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
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int /*<<< orphan*/ ) ; 

int FUNC3(int *argc, char ***argv, __u32 *val, const char *what)
{
	char *endptr;

	FUNC0();

	if (*val) {
		FUNC1("%s already specified", what);
		return -1;
	}

	*val = FUNC2(**argv, &endptr, 0);
	if (*endptr) {
		FUNC1("can't parse %s as %s", **argv, what);
		return -1;
	}
	FUNC0();

	return 0;
}