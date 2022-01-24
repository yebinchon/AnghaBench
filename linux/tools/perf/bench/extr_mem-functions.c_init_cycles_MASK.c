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
 scalar_t__ ENOSYS ; 
 int /*<<< orphan*/  cycle_attr ; 
 scalar_t__ cycles_fd ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	cycles_fd = FUNC3(&cycle_attr, FUNC0(), -1, -1, FUNC1());

	if (cycles_fd < 0 && errno == ENOSYS) {
		FUNC2("No CONFIG_PERF_EVENTS=y kernel support configured?\n");
		return -1;
	}

	return cycles_fd;
}