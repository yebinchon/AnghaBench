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
struct tmpmasks {struct cpumask* delmask; struct cpumask* addmask; } ;
struct cpuset {int partition_root_state; struct cpumask* subparts_cpus; int /*<<< orphan*/  nr_subparts_cpus; struct cpumask* effective_cpus; struct cpumask* cpus_allowed; int /*<<< orphan*/  css; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  PRS_ENABLED 129 
#define  PRS_ERROR 128 
 int /*<<< orphan*/  callback_lock ; 
 struct cpumask* cpu_active_mask ; 
 int FUNC0 (struct cpumask*,struct cpumask*,struct cpumask*) ; 
 int FUNC1 (struct cpumask*,struct cpumask*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpumask*,struct cpumask*) ; 
 scalar_t__ FUNC3 (struct cpumask*) ; 
 int FUNC4 (struct cpumask*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpumask*,struct cpumask*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpumask*,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpumask*) ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct cpuset*) ; 
 struct cpuset* FUNC10 (struct cpuset*) ; 
 int partcmd_disable ; 
 int partcmd_enable ; 
 int partcmd_update ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct cpuset *cpuset, int cmd,
					  struct cpumask *newmask,
					  struct tmpmasks *tmp)
{
	struct cpuset *parent = FUNC10(cpuset);
	int adding;	/* Moving cpus from effective_cpus to subparts_cpus */
	int deleting;	/* Moving cpus from subparts_cpus to effective_cpus */
	bool part_error = false;	/* Partition error? */

	FUNC11(&cpuset_rwsem);

	/*
	 * The parent must be a partition root.
	 * The new cpumask, if present, or the current cpus_allowed must
	 * not be empty.
	 */
	if (!FUNC9(parent) ||
	   (newmask && FUNC3(newmask)) ||
	   (!newmask && FUNC3(cpuset->cpus_allowed)))
		return -EINVAL;

	/*
	 * Enabling/disabling partition root is not allowed if there are
	 * online children.
	 */
	if ((cmd != partcmd_update) && FUNC8(&cpuset->css))
		return -EBUSY;

	/*
	 * Enabling partition root is not allowed if not all the CPUs
	 * can be granted from parent's effective_cpus or at least one
	 * CPU will be left after that.
	 */
	if ((cmd == partcmd_enable) &&
	   (!FUNC6(cpuset->cpus_allowed, parent->effective_cpus) ||
	     FUNC4(cpuset->cpus_allowed, parent->effective_cpus)))
		return -EINVAL;

	/*
	 * A cpumask update cannot make parent's effective_cpus become empty.
	 */
	adding = deleting = false;
	if (cmd == partcmd_enable) {
		FUNC2(tmp->addmask, cpuset->cpus_allowed);
		adding = true;
	} else if (cmd == partcmd_disable) {
		deleting = FUNC0(tmp->delmask, cpuset->cpus_allowed,
				       parent->subparts_cpus);
	} else if (newmask) {
		/*
		 * partcmd_update with newmask:
		 *
		 * delmask = cpus_allowed & ~newmask & parent->subparts_cpus
		 * addmask = newmask & parent->effective_cpus
		 *		     & ~parent->subparts_cpus
		 */
		FUNC1(tmp->delmask, cpuset->cpus_allowed, newmask);
		deleting = FUNC0(tmp->delmask, tmp->delmask,
				       parent->subparts_cpus);

		FUNC0(tmp->addmask, newmask, parent->effective_cpus);
		adding = FUNC1(tmp->addmask, tmp->addmask,
					parent->subparts_cpus);
		/*
		 * Return error if the new effective_cpus could become empty.
		 */
		if (adding &&
		    FUNC4(parent->effective_cpus, tmp->addmask)) {
			if (!deleting)
				return -EINVAL;
			/*
			 * As some of the CPUs in subparts_cpus might have
			 * been offlined, we need to compute the real delmask
			 * to confirm that.
			 */
			if (!FUNC0(tmp->addmask, tmp->delmask,
					 cpu_active_mask))
				return -EINVAL;
			FUNC2(tmp->addmask, parent->effective_cpus);
		}
	} else {
		/*
		 * partcmd_update w/o newmask:
		 *
		 * addmask = cpus_allowed & parent->effectiveb_cpus
		 *
		 * Note that parent's subparts_cpus may have been
		 * pre-shrunk in case there is a change in the cpu list.
		 * So no deletion is needed.
		 */
		adding = FUNC0(tmp->addmask, cpuset->cpus_allowed,
				     parent->effective_cpus);
		part_error = FUNC4(tmp->addmask,
					   parent->effective_cpus);
	}

	if (cmd == partcmd_update) {
		int prev_prs = cpuset->partition_root_state;

		/*
		 * Check for possible transition between PRS_ENABLED
		 * and PRS_ERROR.
		 */
		switch (cpuset->partition_root_state) {
		case PRS_ENABLED:
			if (part_error)
				cpuset->partition_root_state = PRS_ERROR;
			break;
		case PRS_ERROR:
			if (!part_error)
				cpuset->partition_root_state = PRS_ENABLED;
			break;
		}
		/*
		 * Set part_error if previously in invalid state.
		 */
		part_error = (prev_prs == PRS_ERROR);
	}

	if (!part_error && (cpuset->partition_root_state == PRS_ERROR))
		return 0;	/* Nothing need to be done */

	if (cpuset->partition_root_state == PRS_ERROR) {
		/*
		 * Remove all its cpus from parent's subparts_cpus.
		 */
		adding = false;
		deleting = FUNC0(tmp->delmask, cpuset->cpus_allowed,
				       parent->subparts_cpus);
	}

	if (!adding && !deleting)
		return 0;

	/*
	 * Change the parent's subparts_cpus.
	 * Newly added CPUs will be removed from effective_cpus and
	 * newly deleted ones will be added back to effective_cpus.
	 */
	FUNC12(&callback_lock);
	if (adding) {
		FUNC5(parent->subparts_cpus,
			   parent->subparts_cpus, tmp->addmask);
		FUNC1(parent->effective_cpus,
			       parent->effective_cpus, tmp->addmask);
	}
	if (deleting) {
		FUNC1(parent->subparts_cpus,
			       parent->subparts_cpus, tmp->delmask);
		/*
		 * Some of the CPUs in subparts_cpus might have been offlined.
		 */
		FUNC0(tmp->delmask, tmp->delmask, cpu_active_mask);
		FUNC5(parent->effective_cpus,
			   parent->effective_cpus, tmp->delmask);
	}

	parent->nr_subparts_cpus = FUNC7(parent->subparts_cpus);
	FUNC13(&callback_lock);

	return cmd == partcmd_update;
}