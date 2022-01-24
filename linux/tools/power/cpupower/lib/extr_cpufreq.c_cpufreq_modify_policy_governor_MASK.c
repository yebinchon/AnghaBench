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
 int EINVAL ; 
 int SYSFS_PATH_MAX ; 
 int /*<<< orphan*/  WRITE_SCALING_GOVERNOR ; 
 int FUNC0 (char*) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int FUNC3(unsigned int cpu, char *governor)
{
	char new_gov[SYSFS_PATH_MAX];

	if ((!governor) || (FUNC0(governor) > 19))
		return -EINVAL;

	if (FUNC2(new_gov, governor))
		return -EINVAL;

	return FUNC1(cpu, WRITE_SCALING_GOVERNOR,
					     new_gov, FUNC0(new_gov));
}