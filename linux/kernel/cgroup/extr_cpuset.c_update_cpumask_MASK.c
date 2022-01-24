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
struct tmpmasks {int /*<<< orphan*/  new_cpus; int /*<<< orphan*/  delmask; int /*<<< orphan*/  addmask; } ;
struct cpuset {scalar_t__ child_ecpus_count; scalar_t__ partition_root_state; int /*<<< orphan*/  subparts_cpus; scalar_t__ nr_subparts_cpus; int /*<<< orphan*/  cpus_allowed; int /*<<< orphan*/  effective_cpus; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  callback_lock ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC8 (struct cpuset*) ; 
 int /*<<< orphan*/  partcmd_update ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct cpuset top_cpuset ; 
 int /*<<< orphan*/  FUNC11 (struct cpuset*,struct tmpmasks*) ; 
 scalar_t__ FUNC12 (struct cpuset*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tmpmasks*) ; 
 int /*<<< orphan*/  FUNC13 (struct cpuset*,struct cpuset*,struct tmpmasks*) ; 
 int FUNC14 (struct cpuset*,struct cpuset*) ; 

__attribute__((used)) static int FUNC15(struct cpuset *cs, struct cpuset *trialcs,
			  const char *buf)
{
	int retval;
	struct tmpmasks tmp;

	/* top_cpuset.cpus_allowed tracks cpu_online_mask; it's read-only */
	if (cs == &top_cpuset)
		return -EACCES;

	/*
	 * An empty cpus_allowed is ok only if the cpuset has no tasks.
	 * Since cpulist_parse() fails on an empty mask, we special case
	 * that parsing.  The validate_change() call ensures that cpusets
	 * with tasks have cpus.
	 */
	if (!*buf) {
		FUNC2(trialcs->cpus_allowed);
	} else {
		retval = FUNC0(buf, trialcs->cpus_allowed);
		if (retval < 0)
			return retval;

		if (!FUNC6(trialcs->cpus_allowed,
				    top_cpuset.cpus_allowed))
			return -EINVAL;
	}

	/* Nothing to do if the cpus didn't change */
	if (FUNC5(cs->cpus_allowed, trialcs->cpus_allowed))
		return 0;

	retval = FUNC14(cs, trialcs);
	if (retval < 0)
		return retval;

#ifdef CONFIG_CPUMASK_OFFSTACK
	/*
	 * Use the cpumasks in trialcs for tmpmasks when they are pointers
	 * to allocated cpumasks.
	 */
	tmp.addmask  = trialcs->subparts_cpus;
	tmp.delmask  = trialcs->effective_cpus;
	tmp.new_cpus = trialcs->cpus_allowed;
#endif

	if (cs->partition_root_state) {
		/* Cpumask of a partition root cannot be empty */
		if (FUNC4(trialcs->cpus_allowed))
			return -EINVAL;
		if (FUNC12(cs, partcmd_update,
					trialcs->cpus_allowed, &tmp) < 0)
			return -EINVAL;
	}

	FUNC9(&callback_lock);
	FUNC3(cs->cpus_allowed, trialcs->cpus_allowed);

	/*
	 * Make sure that subparts_cpus is a subset of cpus_allowed.
	 */
	if (cs->nr_subparts_cpus) {
		FUNC1(cs->subparts_cpus, cs->subparts_cpus,
			       cs->cpus_allowed);
		cs->nr_subparts_cpus = FUNC7(cs->subparts_cpus);
	}
	FUNC10(&callback_lock);

	FUNC11(cs, &tmp);

	if (cs->partition_root_state) {
		struct cpuset *parent = FUNC8(cs);

		/*
		 * For partition root, update the cpumasks of sibling
		 * cpusets if they use parent's effective_cpus.
		 */
		if (parent->child_ecpus_count)
			FUNC13(parent, cs, &tmp);
	}
	return 0;
}