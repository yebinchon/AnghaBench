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
struct cpuset {int /*<<< orphan*/  mems_allowed; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  callback_lock ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cpuset top_cpuset ; 
 int /*<<< orphan*/  FUNC6 (struct cpuset*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cpuset*,struct cpuset*) ; 

__attribute__((used)) static int FUNC8(struct cpuset *cs, struct cpuset *trialcs,
			   const char *buf)
{
	int retval;

	/*
	 * top_cpuset.mems_allowed tracks node_stats[N_MEMORY];
	 * it's read-only
	 */
	if (cs == &top_cpuset) {
		retval = -EACCES;
		goto done;
	}

	/*
	 * An empty mems_allowed is ok iff there are no tasks in the cpuset.
	 * Since nodelist_parse() fails on an empty mask, we special case
	 * that parsing.  The validate_change() call ensures that cpusets
	 * with tasks have memory.
	 */
	if (!*buf) {
		FUNC1(trialcs->mems_allowed);
	} else {
		retval = FUNC0(buf, trialcs->mems_allowed);
		if (retval < 0)
			goto done;

		if (!FUNC3(trialcs->mems_allowed,
				  top_cpuset.mems_allowed)) {
			retval = -EINVAL;
			goto done;
		}
	}

	if (FUNC2(cs->mems_allowed, trialcs->mems_allowed)) {
		retval = 0;		/* Too easy - nothing to do */
		goto done;
	}
	retval = FUNC7(cs, trialcs);
	if (retval < 0)
		goto done;

	FUNC4(&callback_lock);
	cs->mems_allowed = trialcs->mems_allowed;
	FUNC5(&callback_lock);

	/* use trialcs->mems_allowed as a temp variable */
	FUNC6(cs, &trialcs->mems_allowed);
done:
	return retval;
}