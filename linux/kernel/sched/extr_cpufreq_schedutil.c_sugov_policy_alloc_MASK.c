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
struct sugov_policy {int /*<<< orphan*/  update_lock; struct cpufreq_policy* policy; } ;
struct cpufreq_policy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sugov_policy* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sugov_policy *FUNC2(struct cpufreq_policy *policy)
{
	struct sugov_policy *sg_policy;

	sg_policy = FUNC0(sizeof(*sg_policy), GFP_KERNEL);
	if (!sg_policy)
		return NULL;

	sg_policy->policy = policy;
	FUNC1(&sg_policy->update_lock);
	return sg_policy;
}