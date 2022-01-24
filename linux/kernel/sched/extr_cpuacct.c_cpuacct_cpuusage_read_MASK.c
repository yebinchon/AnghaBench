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
typedef  scalar_t__ u64 ;
struct cpuacct_usage {scalar_t__* usages; } ;
struct cpuacct {int /*<<< orphan*/  cpuusage; } ;
typedef  enum cpuacct_stat_index { ____Placeholder_cpuacct_stat_index } cpuacct_stat_index ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CPUACCT_STAT_NSTATS ; 
 TYPE_1__* FUNC1 (int) ; 
 struct cpuacct_usage* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u64 FUNC5(struct cpuacct *ca, int cpu,
				 enum cpuacct_stat_index index)
{
	struct cpuacct_usage *cpuusage = FUNC2(ca->cpuusage, cpu);
	u64 data;

	/*
	 * We allow index == CPUACCT_STAT_NSTATS here to read
	 * the sum of suages.
	 */
	FUNC0(index > CPUACCT_STAT_NSTATS);

#ifndef CONFIG_64BIT
	/*
	 * Take rq->lock to make 64-bit read safe on 32-bit platforms.
	 */
	FUNC3(&FUNC1(cpu)->lock);
#endif

	if (index == CPUACCT_STAT_NSTATS) {
		int i = 0;

		data = 0;
		for (i = 0; i < CPUACCT_STAT_NSTATS; i++)
			data += cpuusage->usages[i];
	} else {
		data = cpuusage->usages[index];
	}

#ifndef CONFIG_64BIT
	FUNC4(&FUNC1(cpu)->lock);
#endif

	return data;
}