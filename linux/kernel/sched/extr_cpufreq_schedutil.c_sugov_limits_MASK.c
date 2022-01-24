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
struct sugov_policy {int limits_changed; int /*<<< orphan*/  work_lock; } ;
struct cpufreq_policy {int /*<<< orphan*/  fast_switch_enabled; struct sugov_policy* governor_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cpufreq_policy *policy)
{
	struct sugov_policy *sg_policy = policy->governor_data;

	if (!policy->fast_switch_enabled) {
		FUNC1(&sg_policy->work_lock);
		FUNC0(policy);
		FUNC2(&sg_policy->work_lock);
	}

	sg_policy->limits_changed = true;
}