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
typedef  int /*<<< orphan*/  pkg_dev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct isst_pkg_ctdp*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct isst_pkg_ctdp*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct isst_pkg_ctdp*) ; 
 int /*<<< orphan*/  FUNC3 (struct isst_pkg_ctdp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  tdp_level ; 

__attribute__((used)) static void FUNC5(int cpu, void *arg1, void *arg2,
				     void *arg3, void *arg4)
{
	struct isst_pkg_ctdp pkg_dev;
	int ret;

	FUNC3(&pkg_dev, 0, sizeof(pkg_dev));
	ret = FUNC1(cpu, tdp_level, &pkg_dev);
	if (ret) {
		FUNC4("isst_get_process_ctdp");
	} else {
		FUNC0(cpu, outf, tdp_level, &pkg_dev);
		FUNC2(cpu, &pkg_dev);
	}
}