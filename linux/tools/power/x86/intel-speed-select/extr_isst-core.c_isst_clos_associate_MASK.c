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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLOS_PQR_ASSOC ; 
 int /*<<< orphan*/  CONFIG_CLOS ; 
 int /*<<< orphan*/  MBOX_CMD_WRITE_BIT ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned int,unsigned int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int*) ; 

int FUNC4(int cpu, int clos_id)
{
	unsigned int req, resp;
	unsigned int param;
	int core_id, ret;

	req = (clos_id & 0x03) << 16;
	core_id = FUNC2(cpu);
	param = FUNC0(MBOX_CMD_WRITE_BIT) | core_id;

	ret = FUNC3(cpu, CONFIG_CLOS, CLOS_PQR_ASSOC, param,
				     req, &resp);
	if (ret)
		return ret;

	FUNC1("cpu:%d CLOS_PQR_ASSOC param:%x req:%x\n", cpu, param,
		     req);

	return 0;
}