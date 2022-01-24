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
struct cpupri {TYPE_1__* pri_to_cpu; int /*<<< orphan*/  cpu_to_pri; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int CPUPRI_NR_PRIORITIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct cpupri *cp)
{
	int i;

	FUNC1(cp->cpu_to_pri);
	for (i = 0; i < CPUPRI_NR_PRIORITIES; i++)
		FUNC0(cp->pri_to_cpu[i].mask);
}