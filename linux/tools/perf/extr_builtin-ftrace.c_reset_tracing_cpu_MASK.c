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

/* Variables and functions */
 struct perf_cpu_map* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_map*) ; 
 int FUNC2 (struct perf_cpu_map*) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct perf_cpu_map *cpumap = FUNC0(NULL);
	int ret;

	ret = FUNC2(cpumap);
	FUNC1(cpumap);
	return ret;
}