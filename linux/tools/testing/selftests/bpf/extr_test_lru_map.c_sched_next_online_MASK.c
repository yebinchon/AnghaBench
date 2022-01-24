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
typedef  int /*<<< orphan*/  cpuset ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int nr_cpus ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int pid, int *next_to_try)
{
	cpu_set_t cpuset;
	int next = *next_to_try;
	int ret = -1;

	while (next < nr_cpus) {
		FUNC1(&cpuset);
		FUNC0(next++, &cpuset);
		if (!FUNC2(pid, sizeof(cpuset), &cpuset)) {
			ret = 0;
			break;
		}
	}

	*next_to_try = next;
	return ret;
}