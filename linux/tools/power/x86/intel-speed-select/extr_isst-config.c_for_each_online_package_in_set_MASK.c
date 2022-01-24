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
typedef  int /*<<< orphan*/  max_packages ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PACKAGE_COUNT ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  present_cpumask ; 
 int /*<<< orphan*/  present_cpumask_size ; 
 int topo_max_cpus ; 

__attribute__((used)) static void FUNC5(void (*callback)(int, void *, void *,
							    void *, void *),
					   void *arg1, void *arg2, void *arg3,
					   void *arg4)
{
	int max_packages[MAX_PACKAGE_COUNT * MAX_PACKAGE_COUNT];
	int pkg_index = 0, i;

	FUNC3(max_packages, 0xff, sizeof(max_packages));
	for (i = 0; i < topo_max_cpus; ++i) {
		int j, online, pkg_id, die_id = 0, skip = 0;

		if (!FUNC0(i, present_cpumask_size, present_cpumask))
			continue;
		if (i)
			online = FUNC4(
				1, "/sys/devices/system/cpu/cpu%d/online", i);
		else
			online =
				1; /* online entry for CPU 0 needs some special configs */

		die_id = FUNC1(i);
		if (die_id < 0)
			die_id = 0;
		pkg_id = FUNC2(i);
		/* Create an unique id for package, die combination to store */
		pkg_id = (MAX_PACKAGE_COUNT * pkg_id + die_id);

		for (j = 0; j < pkg_index; ++j) {
			if (max_packages[j] == pkg_id) {
				skip = 1;
				break;
			}
		}

		if (!skip && online && callback) {
			callback(i, arg1, arg2, arg3, arg4);
			max_packages[pkg_index++] = pkg_id;
		}
	}
}