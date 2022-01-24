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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(int fds[], char *rings[], const int expect[])
{
	int ret[2];

	ret[0] = FUNC1(fds[0], rings[0]);
	ret[1] = FUNC1(fds[1], rings[1]);

	FUNC0(stderr, "info: count=%d,%d, expect=%d,%d\n",
			ret[0], ret[1], expect[0], expect[1]);

	if ((!(ret[0] == expect[0] && ret[1] == expect[1])) &&
	    (!(ret[0] == expect[1] && ret[1] == expect[0]))) {
		FUNC0(stderr, "warning: incorrect queue lengths\n");
		return 1;
	}

	return 0;
}