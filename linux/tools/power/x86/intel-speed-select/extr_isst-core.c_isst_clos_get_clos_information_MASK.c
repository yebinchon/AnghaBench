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
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  CLOS_PM_QOS_CONFIG ; 
 int /*<<< orphan*/  CONFIG_CLOS ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC3(int cpu, int *enable, int *type)
{
	unsigned int resp;
	int ret;

	ret = FUNC2(cpu, CONFIG_CLOS, CLOS_PM_QOS_CONFIG, 0, 0,
				     &resp);
	if (ret)
		return ret;

	FUNC1("cpu:%d CLOS_PM_QOS_CONFIG resp:%x\n", cpu, resp);

	if (resp & FUNC0(1))
		*enable = 1;
	else
		*enable = 0;

	if (resp & FUNC0(2))
		*type = 1;
	else
		*type = 0;

	return 0;
}