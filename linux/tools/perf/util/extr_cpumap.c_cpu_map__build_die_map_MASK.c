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
 int FUNC0 (struct perf_cpu_map*,struct perf_cpu_map**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_map__get_die ; 

int FUNC1(struct perf_cpu_map *cpus, struct perf_cpu_map **diep)
{
	return FUNC0(cpus, diep, cpu_map__get_die, NULL);
}