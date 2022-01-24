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
struct cpuset {int /*<<< orphan*/  effective_cpus; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (struct cpumask*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC3 (struct cpuset*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct cpuset *cs, struct cpumask *pmask)
{
	while (!FUNC2(cs->effective_cpus, cpu_online_mask)) {
		cs = FUNC3(cs);
		if (FUNC4(!cs)) {
			/*
			 * The top cpuset doesn't have any online cpu as a
			 * consequence of a race between cpuset_hotplug_work
			 * and cpu hotplug notifier.  But we know the top
			 * cpuset's effective_cpus is on its way to to be
			 * identical to cpu_online_mask.
			 */
			FUNC1(pmask, cpu_online_mask);
			return;
		}
	}
	FUNC0(pmask, cs->effective_cpus, cpu_online_mask);
}