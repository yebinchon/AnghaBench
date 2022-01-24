#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ max_cpu_num; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ BITMASK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,unsigned long*) ; 
 TYPE_1__ topo ; 

void FUNC3(void)
{
	FILE *filep;
	unsigned long dummy;

	topo.max_cpu_num = 0;
	filep = FUNC1(
			"/sys/devices/system/cpu/cpu0/topology/thread_siblings",
			"r");
	while (FUNC2(filep, "%lx,", &dummy) == 1)
		topo.max_cpu_num += BITMASK_SIZE;
	FUNC0(filep);
	topo.max_cpu_num--; /* 0 based */
}