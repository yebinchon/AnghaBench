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
 scalar_t__ FUNC0 (char const*,void*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(const char *cgroup, void *arg)
{
	int ppid = FUNC1();

	if (FUNC0(cgroup, arg))
		return -1;

	while (FUNC1() == ppid)
		FUNC2(1);

	return 0;
}