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
typedef  size_t u32 ;
struct numa_topology {size_t nr; TYPE_1__* nodes; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct numa_topology*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct numa_topology *tp)
{
	u32 i;

	for (i = 0; i < tp->nr; i++)
		FUNC1(&tp->nodes[i].cpus);

	FUNC0(tp);
}