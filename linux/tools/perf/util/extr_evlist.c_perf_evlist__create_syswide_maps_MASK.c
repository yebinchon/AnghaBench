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
struct perf_thread_map {int dummy; } ;
struct perf_cpu_map {int dummy; } ;
struct evlist {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct perf_cpu_map* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct perf_cpu_map*,struct perf_thread_map*) ; 
 struct perf_thread_map* FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct evlist *evlist)
{
	struct perf_cpu_map *cpus;
	struct perf_thread_map *threads;
	int err = -ENOMEM;

	/*
	 * Try reading /sys/devices/system/cpu/online to get
	 * an all cpus map.
	 *
	 * FIXME: -ENOMEM is the best we can do here, the cpu_map
	 * code needs an overhaul to properly forward the
	 * error, and we may not want to do that fallback to a
	 * default cpu identity map :-\
	 */
	cpus = FUNC0(NULL);
	if (!cpus)
		goto out;

	threads = FUNC3();
	if (!threads)
		goto out_put;

	FUNC2(&evlist->core, cpus, threads);
out:
	return err;
out_put:
	FUNC1(cpus);
	goto out;
}