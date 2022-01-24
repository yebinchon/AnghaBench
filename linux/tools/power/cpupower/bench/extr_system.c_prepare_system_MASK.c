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
struct config {int cpu; int prio; scalar_t__ verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRIORITY_DEFAULT ; 
 int /*<<< orphan*/  PRIORITY_HIGH ; 
 int /*<<< orphan*/  PRIORITY_LOW ; 
#define  SCHED_HIGH 129 
#define  SCHED_LOW 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const struct config *config)
{
	if (config->verbose)
		FUNC0("set cpu affinity to cpu #%u\n", config->cpu);

	FUNC1(config->cpu);

	switch (config->prio) {
	case SCHED_HIGH:
		if (config->verbose)
			FUNC0("high priority condition requested\n");

		FUNC2(PRIORITY_HIGH);
		break;
	case SCHED_LOW:
		if (config->verbose)
			FUNC0("low priority condition requested\n");

		FUNC2(PRIORITY_LOW);
		break;
	default:
		if (config->verbose)
			FUNC0("default priority condition requested\n");

		FUNC2(PRIORITY_DEFAULT);
	}
}