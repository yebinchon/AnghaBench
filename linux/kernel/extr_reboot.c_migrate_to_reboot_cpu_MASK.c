#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PF_NO_SETAFFINITY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* current ; 
 int reboot_cpu ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
	/* The boot cpu is always logical cpu 0 */
	int cpu = reboot_cpu;

	FUNC0();

	/* Make certain the cpu I'm about to reboot on is online */
	if (!FUNC1(cpu))
		cpu = FUNC2(cpu_online_mask);

	/* Prevent races with other tasks migrating this task */
	current->flags |= PF_NO_SETAFFINITY;

	/* Make certain I only run on the appropriate processor */
	FUNC4(current, FUNC3(cpu));
}