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
struct isst_pkg_ctdp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fact_trl ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC1 (int,struct isst_pkg_ctdp*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(int cpu, void *arg1, void *arg2, void *arg3,
			     void *arg4)
{
	int ret;
	int status = *(int *)arg4;

	ret = FUNC2(cpu, 0, status);
	if (ret)
		FUNC5("isst_set_fact");
	else {
		if (status) {
			struct isst_pkg_ctdp pkg_dev;

			ret = FUNC1(cpu, &pkg_dev);
			if (ret) {
				FUNC0(cpu, outf, "turbo-freq",
						    "enable", ret);
				return;
			}
			ret = FUNC3(cpu, fact_trl);
			FUNC0(cpu, outf, "turbo-freq", "enable",
					    ret);
		} else {
			/* Since we modified TRL during Fact enable, restore it */
			FUNC4(cpu, fact_trl);
			FUNC0(cpu, outf, "turbo-freq", "disable",
					    ret);
		}
	}
}