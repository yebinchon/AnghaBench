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
struct isst_clos_config {unsigned int epp; unsigned int clos_prop_prio; unsigned int clos_min; unsigned int clos_max; unsigned int clos_desired; int /*<<< orphan*/  die_id; int /*<<< orphan*/  pkg_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOS_PM_CLOS ; 
 int /*<<< orphan*/  CONFIG_CLOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC3(int cpu, int clos, struct isst_clos_config *clos_config)
{
	unsigned int resp;
	int ret;

	ret = FUNC2(cpu, CONFIG_CLOS, CLOS_PM_CLOS, clos, 0,
				     &resp);
	if (ret)
		return ret;

	clos_config->pkg_id = FUNC1(cpu);
	clos_config->die_id = FUNC0(cpu);

	clos_config->epp = resp & 0x0f;
	clos_config->clos_prop_prio = (resp >> 4) & 0x0f;
	clos_config->clos_min = (resp >> 8) & 0xff;
	clos_config->clos_max = (resp >> 16) & 0xff;
	clos_config->clos_desired = (resp >> 24) & 0xff;

	return 0;
}