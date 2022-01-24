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
struct perf_thread_map {int /*<<< orphan*/  nr; } ;
struct perf_cpu_map {int /*<<< orphan*/  nr; } ;
struct TYPE_2__ {struct perf_thread_map* threads; struct perf_cpu_map* cpus; } ;
struct evsel {TYPE_1__ core; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct evsel*,struct evlist*) ; 

int FUNC2(struct evsel *evsel, struct evlist *evlist)
{
	struct perf_cpu_map *cpus = evsel->core.cpus;
	struct perf_thread_map *threads = evsel->core.threads;

	if (FUNC0(&evsel->core, cpus->nr, threads->nr))
		return -ENOMEM;

	return FUNC1(evsel, evlist);
}