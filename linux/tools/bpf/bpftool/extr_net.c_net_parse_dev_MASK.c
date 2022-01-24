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
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(int *argc, char ***argv)
{
	int ifindex;

	if (FUNC2(**argv, "dev")) {
		FUNC0();

		ifindex = FUNC1(**argv);
		if (!ifindex)
			FUNC3("invalid devname %s", **argv);

		FUNC0();
	} else {
		FUNC3("expected 'dev', got: '%s'?", **argv);
		return -1;
	}

	return ifindex;
}