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
struct perf_event_attr {unsigned long bp_addr; int /*<<< orphan*/  bp_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_BREAKPOINT_X ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_MODIFY_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ test_function ; 
 int /*<<< orphan*/  the_var ; 
 int FUNC4 (void*,struct perf_event_attr*) ; 

__attribute__((used)) static int FUNC5(int wp_cnt, int share)
{
	struct perf_event_attr attr, attr_mod, attr_new;
	int i, fd[wp_cnt], fd_wp, ret;

	for (i = 0; i < wp_cnt; i++) {
		fd[i] = FUNC4((void *)&the_var, &attr);
		FUNC0("failed to create wp\n", fd[i] != -1);
		FUNC3("wp %d created\n", i);
	}

	attr_mod = attr;
	attr_mod.bp_type = HW_BREAKPOINT_X;
	attr_mod.bp_addr = (unsigned long) test_function;

	ret = FUNC2(fd[0], PERF_EVENT_IOC_MODIFY_ATTRIBUTES, &attr_mod);
	FUNC0("failed to modify wp\n", ret == 0);

	FUNC3("wp 0 modified to bp\n");

	if (!share) {
		fd_wp = FUNC4((void *)&the_var, &attr_new);
		FUNC0("failed to create max wp\n", fd_wp != -1);
		FUNC3("wp max created\n");
	}

	for (i = 0; i < wp_cnt; i++)
		FUNC1(fd[i]);

	return 0;
}