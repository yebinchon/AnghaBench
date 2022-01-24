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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  boost_mutex ; 
 int /*<<< orphan*/ ** boost_tasks ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  n_rcu_torture_boost_ktrerror ; 
 int /*<<< orphan*/  rcu_torture_boost ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(unsigned int cpu)
{
	int retval;

	if (boost_tasks[cpu] != NULL)
		return 0;  /* Already created, nothing more to do. */

	/* Don't allow time recalculation while creating a new task. */
	FUNC6(&boost_mutex);
	FUNC8();
	FUNC2("Creating rcu_torture_boost task");
	boost_tasks[cpu] = FUNC5(rcu_torture_boost, NULL,
						  FUNC3(cpu),
						  "rcu_torture_boost");
	if (FUNC0(boost_tasks[cpu])) {
		retval = FUNC1(boost_tasks[cpu]);
		FUNC2("rcu_torture_boost task create failed");
		n_rcu_torture_boost_ktrerror++;
		boost_tasks[cpu] = NULL;
		FUNC7(&boost_mutex);
		return retval;
	}
	FUNC4(boost_tasks[cpu], cpu);
	FUNC9(boost_tasks[cpu]);
	FUNC7(&boost_mutex);
	return 0;
}