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
struct sched_param {int sched_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCHEDULER ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(int priority)
{
	struct sched_param param;

	FUNC0("set scheduler priority to %i\n", priority);

	param.sched_priority = priority;

	if (FUNC3(0, SCHEDULER, &param) < 0) {
		FUNC2("sched_setscheduler");
		FUNC1(stderr, "warning: unable to set scheduler priority\n");
		return -1;
	}

	return 0;
}