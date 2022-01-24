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
struct tmpmasks {int dummy; } ;
struct cpuset {scalar_t__ attach_in_progress; scalar_t__ partition_root_state; int /*<<< orphan*/  effective_mems; int /*<<< orphan*/  effective_cpus; int /*<<< orphan*/  subparts_cpus; scalar_t__ nr_subparts_cpus; int /*<<< orphan*/  mems_allowed; } ;
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 scalar_t__ PRS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cpuset*,struct cpuset*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpuset_attach_wq ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 int /*<<< orphan*/  FUNC7 (struct cpuset*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cpuset*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpuset* FUNC13 (struct cpuset*) ; 
 int /*<<< orphan*/  partcmd_disable ; 
 int /*<<< orphan*/  partcmd_update ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (struct cpuset*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tmpmasks*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC18(struct cpuset *cs, struct tmpmasks *tmp)
{
	static cpumask_t new_cpus;
	static nodemask_t new_mems;
	bool cpus_updated;
	bool mems_updated;
	struct cpuset *parent;
retry:
	FUNC17(cpuset_attach_wq, cs->attach_in_progress == 0);

	FUNC14(&cpuset_rwsem);

	/*
	 * We have raced with task attaching. We wait until attaching
	 * is finished, so we won't attach a task to an empty cpuset.
	 */
	if (cs->attach_in_progress) {
		FUNC15(&cpuset_rwsem);
		goto retry;
	}

	parent =  FUNC13(cs);
	FUNC0(&new_cpus, cs, parent);
	FUNC11(new_mems, cs->mems_allowed, parent->effective_mems);

	if (cs->nr_subparts_cpus)
		/*
		 * Make sure that CPUs allocated to child partitions
		 * do not show up in effective_cpus.
		 */
		FUNC1(&new_cpus, &new_cpus, cs->subparts_cpus);

	if (!tmp || !cs->partition_root_state)
		goto update_tasks;

	/*
	 * In the unlikely event that a partition root has empty
	 * effective_cpus or its parent becomes erroneous, we have to
	 * transition it to the erroneous state.
	 */
	if (FUNC10(cs) && (FUNC3(&new_cpus) ||
	   (parent->partition_root_state == PRS_ERROR))) {
		if (cs->nr_subparts_cpus) {
			cs->nr_subparts_cpus = 0;
			FUNC2(cs->subparts_cpus);
			FUNC0(&new_cpus, cs, parent);
		}

		/*
		 * If the effective_cpus is empty because the child
		 * partitions take away all the CPUs, we can keep
		 * the current partition and let the child partitions
		 * fight for available CPUs.
		 */
		if ((parent->partition_root_state == PRS_ERROR) ||
		     FUNC3(&new_cpus)) {
			FUNC16(cs, partcmd_disable,
						       NULL, tmp);
			cs->partition_root_state = PRS_ERROR;
		}
		FUNC6();
	}

	/*
	 * On the other hand, an erroneous partition root may be transitioned
	 * back to a regular one or a partition root with no CPU allocated
	 * from the parent may change to erroneous.
	 */
	if (FUNC10(parent) &&
	   ((cs->partition_root_state == PRS_ERROR) ||
	    !FUNC5(&new_cpus, parent->subparts_cpus)) &&
	     FUNC16(cs, partcmd_update, NULL, tmp))
		FUNC6();

update_tasks:
	cpus_updated = !FUNC4(&new_cpus, cs->effective_cpus);
	mems_updated = !FUNC12(new_mems, cs->effective_mems);

	if (FUNC9())
		FUNC7(cs, &new_cpus, &new_mems,
				     cpus_updated, mems_updated);
	else
		FUNC8(cs, &new_cpus, &new_mems,
					    cpus_updated, mems_updated);

	FUNC15(&cpuset_rwsem);
}