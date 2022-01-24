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
struct perf_event_attr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (void*,struct perf_event_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ test_function ; 
 int /*<<< orphan*/  the_var ; 
 int FUNC3 (void*,struct perf_event_attr*) ; 

__attribute__((used)) static int FUNC4(int wp_cnt, int bp_cnt)
{
	struct perf_event_attr attr;
	int i, fd[wp_cnt + bp_cnt], ret;

	for (i = 0; i < wp_cnt; i++) {
		fd[i] = FUNC3((void *)&the_var, &attr);
		FUNC0("failed to create wp\n", fd[i] != -1);
	}

	for (; i < (bp_cnt + wp_cnt); i++) {
		fd[i] = FUNC1((void *)test_function, &attr);
		if (fd[i] == -1)
			break;
	}

	ret = i != (bp_cnt + wp_cnt);

	while (i--)
		FUNC2(fd[i]);

	return ret;
}