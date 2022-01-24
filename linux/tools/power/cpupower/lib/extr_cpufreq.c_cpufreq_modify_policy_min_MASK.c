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
 int SYSFS_PATH_MAX ; 
 int /*<<< orphan*/  WRITE_SCALING_MIN_FREQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC3(unsigned int cpu, unsigned long min_freq)
{
	char value[SYSFS_PATH_MAX];

	FUNC0(value, SYSFS_PATH_MAX, "%lu", min_freq);

	return FUNC2(cpu, WRITE_SCALING_MIN_FREQ,
					     value, FUNC1(value));
}