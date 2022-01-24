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
 int /*<<< orphan*/  clos_priority_type ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(int cpu, void *arg1, void *arg2, void *arg3,
				   void *arg4)
{
	int ret;
	int status = *(int *)arg4;

	ret = FUNC1(cpu, status, clos_priority_type);
	if (ret) {
		FUNC2("isst_pm_qos_config");
	} else {
		if (status)
			FUNC0(cpu, outf, "core-power", "enable",
					    ret);
		else
			FUNC0(cpu, outf, "core-power", "disable",
					    ret);
	}
}