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
struct perf_pmu {int /*<<< orphan*/  cpus; } ;
struct cpu_map {int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  STR_LEN ; 
 struct cpu_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpu_map*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 () ; 

char *FUNC5(struct perf_pmu *pmu)
{
	/* In nds32, we only have one cpu */
	char *buf = NULL;
	struct cpu_map *cpus;
	const char *sysfs = FUNC4();

	if (!sysfs || !pmu || !pmu->cpus)
		return NULL;

	buf = FUNC2(STR_LEN);
	if (!buf)
		return NULL;

	cpus = FUNC0(pmu->cpus);
	FUNC3(buf, "0x%x", cpus->nr - 1);
	FUNC1(cpus);
	return buf;
}