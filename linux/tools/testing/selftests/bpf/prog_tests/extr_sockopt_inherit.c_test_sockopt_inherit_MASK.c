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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char*) ; 

void FUNC4(void)
{
	int cgroup_fd;

	cgroup_fd = FUNC3("/sockopt_inherit");
	if (FUNC0(cgroup_fd < 0))
		return;

	FUNC2(cgroup_fd);
	FUNC1(cgroup_fd);
}