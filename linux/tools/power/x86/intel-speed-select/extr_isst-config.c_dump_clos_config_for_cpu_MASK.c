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
struct isst_clos_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current_clos ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct isst_clos_config*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct isst_clos_config*) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(int cpu, void *arg1, void *arg2,
				     void *arg3, void *arg4)
{
	struct isst_clos_config clos_config;
	int ret;

	ret = FUNC1(cpu, current_clos, &clos_config);
	if (ret)
		FUNC2("isst_pm_get_clos");
	else
		FUNC0(cpu, outf, current_clos,
					      &clos_config);
}