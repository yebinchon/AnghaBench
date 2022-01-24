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
typedef  int /*<<< orphan*/  cpumask_var_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  wq_unbound_cpumask ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC8(cpumask_var_t cpumask)
{
	int ret = -EINVAL;
	cpumask_var_t saved_cpumask;

	if (!FUNC7(&saved_cpumask, GFP_KERNEL))
		return -ENOMEM;

	/*
	 * Not excluding isolated cpus on purpose.
	 * If the user wishes to include them, we allow that.
	 */
	FUNC2(cpumask, cpumask, cpu_possible_mask);
	if (!FUNC4(cpumask)) {
		FUNC0();

		/* save the old wq_unbound_cpumask. */
		FUNC3(saved_cpumask, wq_unbound_cpumask);

		/* update wq_unbound_cpumask at first and apply it to wqs. */
		FUNC3(wq_unbound_cpumask, cpumask);
		ret = FUNC6();

		/* restore the wq_unbound_cpumask when failed. */
		if (ret < 0)
			FUNC3(wq_unbound_cpumask, saved_cpumask);

		FUNC1();
	}

	FUNC5(saved_cpumask);
	return ret;
}