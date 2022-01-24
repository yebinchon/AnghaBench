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
 char* CPUS_TEMPLATE_UNCORE ; 
 int PATH_MAX ; 
 struct perf_cpu_map* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*,char const*) ; 
 char* FUNC3 () ; 

__attribute__((used)) static bool FUNC4(const char *name)
{
	char path[PATH_MAX];
	struct perf_cpu_map *cpus;
	const char *sysfs = FUNC3();

	FUNC2(path, PATH_MAX, CPUS_TEMPLATE_UNCORE, sysfs, name);
	cpus = FUNC0(path);
	FUNC1(cpus);

	return !!cpus;
}