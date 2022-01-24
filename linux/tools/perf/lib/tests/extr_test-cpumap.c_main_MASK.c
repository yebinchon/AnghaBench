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
 int /*<<< orphan*/  __T_OK ; 
 int /*<<< orphan*/  __T_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  libperf_print ; 
 struct perf_cpu_map* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_map*) ; 

int FUNC4(int argc, char **argv)
{
	struct perf_cpu_map *cpus;

	__T_START;

	FUNC0(libperf_print);

	cpus = FUNC1();
	if (!cpus)
		return -1;

	FUNC2(cpus);
	FUNC3(cpus);
	FUNC3(cpus);

	__T_OK;
	return 0;
}