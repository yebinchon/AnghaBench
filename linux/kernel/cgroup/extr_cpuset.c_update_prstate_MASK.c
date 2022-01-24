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
struct cpuset {int partition_root_state; scalar_t__ child_ecpus_count; int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_CPU_EXCLUSIVE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int PRS_ENABLED ; 
 int PRS_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct tmpmasks*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tmpmasks*) ; 
 struct cpuset* FUNC3 (struct cpuset*) ; 
 int /*<<< orphan*/  partcmd_disable ; 
 int /*<<< orphan*/  partcmd_enable ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct cpuset top_cpuset ; 
 int FUNC5 (int /*<<< orphan*/ ,struct cpuset*,int) ; 
 int FUNC6 (struct cpuset*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tmpmasks*) ; 
 int /*<<< orphan*/  FUNC7 (struct cpuset*,struct cpuset*,struct tmpmasks*) ; 
 int /*<<< orphan*/  FUNC8 (struct cpuset*) ; 

__attribute__((used)) static int FUNC9(struct cpuset *cs, int val)
{
	int err;
	struct cpuset *parent = FUNC3(cs);
	struct tmpmasks tmp;

	if ((val != 0) && (val != 1))
		return -EINVAL;
	if (val == cs->partition_root_state)
		return 0;

	/*
	 * Cannot force a partial or invalid partition root to a full
	 * partition root.
	 */
	if (val && cs->partition_root_state)
		return -EINVAL;

	if (FUNC0(NULL, &tmp))
		return -ENOMEM;

	err = -EINVAL;
	if (!cs->partition_root_state) {
		/*
		 * Turning on partition root requires setting the
		 * CS_CPU_EXCLUSIVE bit implicitly as well and cpus_allowed
		 * cannot be NULL.
		 */
		if (FUNC1(cs->cpus_allowed))
			goto out;

		err = FUNC5(CS_CPU_EXCLUSIVE, cs, 1);
		if (err)
			goto out;

		err = FUNC6(cs, partcmd_enable,
						     NULL, &tmp);
		if (err) {
			FUNC5(CS_CPU_EXCLUSIVE, cs, 0);
			goto out;
		}
		cs->partition_root_state = PRS_ENABLED;
	} else {
		/*
		 * Turning off partition root will clear the
		 * CS_CPU_EXCLUSIVE bit.
		 */
		if (cs->partition_root_state == PRS_ERROR) {
			cs->partition_root_state = 0;
			FUNC5(CS_CPU_EXCLUSIVE, cs, 0);
			err = 0;
			goto out;
		}

		err = FUNC6(cs, partcmd_disable,
						     NULL, &tmp);
		if (err)
			goto out;

		cs->partition_root_state = 0;

		/* Turning off CS_CPU_EXCLUSIVE will not return error */
		FUNC5(CS_CPU_EXCLUSIVE, cs, 0);
	}

	/*
	 * Update cpumask of parent's tasks except when it is the top
	 * cpuset as some system daemons cannot be mapped to other CPUs.
	 */
	if (parent != &top_cpuset)
		FUNC8(parent);

	if (parent->child_ecpus_count)
		FUNC7(parent, cs, &tmp);

	FUNC4();
out:
	FUNC2(NULL, &tmp);
	return err;
}