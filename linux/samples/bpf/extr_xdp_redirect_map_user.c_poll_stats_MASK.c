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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  prev ;
typedef  int __u64 ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  rxcnt_map_fd ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(int interval, int ifindex)
{
	unsigned int nr_cpus = FUNC2();
	__u64 values[nr_cpus], prev[nr_cpus];

	FUNC4(prev, 0, sizeof(prev));

	while (1) {
		__u64 sum = 0;
		__u32 key = 0;
		int i;

		FUNC6(interval);
		FUNC0(FUNC1(rxcnt_map_fd, &key, values) == 0);
		for (i = 0; i < nr_cpus; i++)
			sum += (values[i] - prev[i]);
		if (sum)
			FUNC5("ifindex %i: %10llu pkt/s\n",
			       ifindex, sum / interval);
		FUNC3(prev, values, sizeof(values));
	}
}