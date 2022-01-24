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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,size_t,int /*<<< orphan*/ ) ; 
 int MAX_DIE_PER_PACKAGE ; 
 int MAX_PACKAGE_COUNT ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** cpu_cnt ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  present_cpumask ; 
 size_t present_cpumask_size ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 int topo_max_cpus ; 

__attribute__((used)) static void FUNC7(void)
{
	size_t size;
	DIR *dir;
	int i;

	size = FUNC1(&present_cpumask);
	present_cpumask_size = size;
	for (i = 0; i < topo_max_cpus; ++i) {
		char buffer[256];

		FUNC6(buffer, sizeof(buffer),
			 "/sys/devices/system/cpu/cpu%d", i);
		dir = FUNC5(buffer);
		if (dir) {
			int pkg_id, die_id;

			FUNC0(i, size, present_cpumask);
			die_id = FUNC3(i);
			if (die_id < 0)
				die_id = 0;

			pkg_id = FUNC4(i);
			if (pkg_id < MAX_PACKAGE_COUNT &&
			    die_id < MAX_DIE_PER_PACKAGE)
				cpu_cnt[pkg_id][die_id]++;
		}
		FUNC2(dir);
	}
}