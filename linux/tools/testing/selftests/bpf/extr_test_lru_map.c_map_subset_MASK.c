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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long long*,unsigned long long*) ; 
 int FUNC2 (int,unsigned long long*,unsigned long long*) ; 
 unsigned long long errno ; 
 int nr_cpus ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long long,unsigned long long,unsigned long long) ; 
 unsigned long long FUNC4 (unsigned long long) ; 

__attribute__((used)) static int FUNC5(int map0, int map1)
{
	unsigned long long next_key = 0;
	unsigned long long value0[nr_cpus], value1[nr_cpus];
	int ret;

	while (!FUNC1(map1, &next_key, &next_key)) {
		FUNC0(!FUNC2(map1, &next_key, value1));
		ret = FUNC2(map0, &next_key, value0);
		if (ret) {
			FUNC3("key:%llu not found from map. %s(%d)\n",
			       next_key, FUNC4(errno), errno);
			return 0;
		}
		if (value0[0] != value1[0]) {
			FUNC3("key:%llu value0:%llu != value1:%llu\n",
			       next_key, value0[0], value1[0]);
			return 0;
		}
	}
	return 1;
}