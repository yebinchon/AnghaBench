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
struct perf_cpu_map {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct perf_cpu_map* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 struct perf_cpu_map* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct perf_cpu_map *FUNC4(void)
{
	struct perf_cpu_map *cpus = NULL;
	FILE *onlnf;

	onlnf = FUNC2("/sys/devices/system/cpu/online", "r");
	if (!onlnf)
		return FUNC0();

	cpus = FUNC3(onlnf);
	FUNC1(onlnf);
	return cpus;
}