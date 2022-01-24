#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  descr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* tests ; 

void FUNC6(void)
{
	int cgroup_fd, i;

	cgroup_fd = FUNC4("/sockopt");
	if (FUNC1(cgroup_fd < 0))
		return;

	for (i = 0; i < FUNC0(tests); i++) {
		FUNC5(tests[i].descr);
		FUNC1(FUNC3(cgroup_fd, &tests[i]));
	}

	FUNC2(cgroup_fd);
}