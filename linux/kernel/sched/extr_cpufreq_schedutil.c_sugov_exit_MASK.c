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
struct sugov_tunables {int /*<<< orphan*/  attr_set; } ;
struct sugov_policy {int /*<<< orphan*/  tunables_hook; struct sugov_tunables* tunables; } ;
struct cpufreq_policy {struct sugov_policy* governor_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  global_tunables_lock ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sugov_policy*) ; 
 int /*<<< orphan*/  FUNC5 (struct sugov_policy*) ; 
 int /*<<< orphan*/  FUNC6 (struct sugov_tunables*) ; 

__attribute__((used)) static void FUNC7(struct cpufreq_policy *policy)
{
	struct sugov_policy *sg_policy = policy->governor_data;
	struct sugov_tunables *tunables = sg_policy->tunables;
	unsigned int count;

	FUNC2(&global_tunables_lock);

	count = FUNC1(&tunables->attr_set, &sg_policy->tunables_hook);
	policy->governor_data = NULL;
	if (!count)
		FUNC6(tunables);

	FUNC3(&global_tunables_lock);

	FUNC4(sg_policy);
	FUNC5(sg_policy);
	FUNC0(policy);
}