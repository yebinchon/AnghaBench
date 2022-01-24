#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
union perf_event {TYPE_1__ cpu_map; } ;
struct perf_cpu_map {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_cpu_map*,int /*<<< orphan*/ *) ; 
 struct perf_cpu_map* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_cpu_map*) ; 

size_t FUNC4(union perf_event *event, FILE *fp)
{
	struct perf_cpu_map *cpus = FUNC1(&event->cpu_map.data);
	size_t ret;

	ret = FUNC2(fp, ": ");

	if (cpus)
		ret += FUNC0(cpus, fp);
	else
		ret += FUNC2(fp, "failed to get cpumap from event\n");

	FUNC3(cpus);
	return ret;
}