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
typedef  int /*<<< orphan*/  u64 ;
struct cpuacct_usage {int /*<<< orphan*/ * usages; } ;
struct cpuacct {int /*<<< orphan*/  cpuusage; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CPUACCT_STAT_NSTATS ; 
 TYPE_1__* FUNC0 (int) ; 
 struct cpuacct_usage* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct cpuacct *ca, int cpu, u64 val)
{
	struct cpuacct_usage *cpuusage = FUNC1(ca->cpuusage, cpu);
	int i;

#ifndef CONFIG_64BIT
	/*
	 * Take rq->lock to make 64-bit write safe on 32-bit platforms.
	 */
	FUNC2(&FUNC0(cpu)->lock);
#endif

	for (i = 0; i < CPUACCT_STAT_NSTATS; i++)
		cpuusage->usages[i] = val;

#ifndef CONFIG_64BIT
	FUNC3(&FUNC0(cpu)->lock);
#endif
}