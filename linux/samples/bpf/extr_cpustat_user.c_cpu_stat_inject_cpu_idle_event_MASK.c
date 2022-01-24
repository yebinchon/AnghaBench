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
typedef  int /*<<< orphan*/  original_cpumask ;
typedef  int /*<<< orphan*/  cpumask ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void)
{
	int rcpu, i, ret;
	cpu_set_t cpumask;
	cpu_set_t original_cpumask;

	ret = FUNC6(_SC_NPROCESSORS_CONF);
	if (ret < 0)
		return -1;

	rcpu = FUNC4();
	if (rcpu < 0)
		return -1;

	/* Keep track of the CPUs we will run on */
	FUNC3(0, sizeof(original_cpumask), &original_cpumask);

	for (i = 0; i < ret; i++) {

		/* Pointless to wake up ourself */
		if (i == rcpu)
			continue;

		/* Pointless to wake CPUs we will not run on */
		if (!FUNC0(i, &original_cpumask))
			continue;

		FUNC2(&cpumask);
		FUNC1(i, &cpumask);

		FUNC5(0, sizeof(cpumask), &cpumask);
	}

	/* Enable all the CPUs of the original mask */
	FUNC5(0, sizeof(original_cpumask), &original_cpumask);
	return 0;
}