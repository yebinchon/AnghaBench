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
 int /*<<< orphan*/  CLOS_PQR_ASSOC ; 
 int /*<<< orphan*/  CONFIG_CLOS ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int,unsigned int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC3(int cpu, int *clos_id)
{
	unsigned int resp;
	unsigned int param;
	int core_id, ret;

	core_id = FUNC1(cpu);
	param = core_id;

	ret = FUNC2(cpu, CONFIG_CLOS, CLOS_PQR_ASSOC, param, 0,
				     &resp);
	if (ret)
		return ret;

	FUNC0("cpu:%d CLOS_PQR_ASSOC param:%x resp:%x\n", cpu, param,
		     resp);
	*clos_id = (resp >> 16) & 0x03;

	return 0;
}