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
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iucv_allow_cpu ; 
 int /*<<< orphan*/  iucv_buffer_cpumask ; 
 int /*<<< orphan*/  iucv_irq_cpumask ; 
 int /*<<< orphan*/  iucv_path_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	cpumask_t cpumask;

	if (!iucv_path_table)
		return 0;

	FUNC1(&cpumask, &iucv_buffer_cpumask);
	FUNC0(cpu, &cpumask);
	if (FUNC2(&cpumask))
		/* Can't offline last IUCV enabled cpu. */
		return -EINVAL;

	FUNC4(NULL);
	if (!FUNC2(&iucv_irq_cpumask))
		return 0;
	FUNC5(FUNC3(&iucv_buffer_cpumask),
				 iucv_allow_cpu, NULL, 1);
	return 0;
}