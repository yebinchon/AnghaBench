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
struct isst_pkg_ctdp_level_info {int /*<<< orphan*/  core_cpumask; int /*<<< orphan*/  core_cpumask_size; scalar_t__ cpu_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ force_online_offline ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct isst_pkg_ctdp_level_info*) ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tdp_level ; 

__attribute__((used)) static void FUNC11(int cpu, void *arg1, void *arg2, void *arg3,
				  void *arg4)
{
	int ret;

	ret = FUNC8(cpu, tdp_level);
	if (ret)
		FUNC9("set_tdp_level_for_cpu");
	else {
		FUNC6(cpu, outf, "perf-profile", "set_tdp_level",
				    ret);
		if (force_online_offline) {
			struct isst_pkg_ctdp_level_info ctdp_level;
			int pkg_id = FUNC4(cpu);
			int die_id = FUNC3(cpu);

			FUNC2(stderr, "Option is set to online/offline\n");
			ctdp_level.core_cpumask_size =
				FUNC1(&ctdp_level.core_cpumask);
			FUNC7(cpu, tdp_level, &ctdp_level);
			if (ctdp_level.cpu_count) {
				int i, max_cpus = FUNC5();
				for (i = 0; i < max_cpus; ++i) {
					if (pkg_id != FUNC4(i) || die_id != FUNC3(i))
						continue;
					if (FUNC0(i, ctdp_level.core_cpumask_size, ctdp_level.core_cpumask)) {
						FUNC2(stderr, "online cpu %d\n", i);
						FUNC10(i, 1);
					} else {
						FUNC2(stderr, "offline cpu %d\n", i);
						FUNC10(i, 0);
					}
				}
			}
		}
	}
}