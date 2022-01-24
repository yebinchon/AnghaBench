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
struct perf_evlist {struct perf_thread_map* threads; struct perf_cpu_map* cpus; } ;
struct perf_cpu_map {int dummy; } ;

/* Variables and functions */
 struct perf_cpu_map* FUNC0 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_map*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evlist*) ; 
 struct perf_thread_map* FUNC3 (struct perf_thread_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_thread_map*) ; 

void FUNC5(struct perf_evlist *evlist,
			   struct perf_cpu_map *cpus,
			   struct perf_thread_map *threads)
{
	/*
	 * Allow for the possibility that one or another of the maps isn't being
	 * changed i.e. don't put it.  Note we are assuming the maps that are
	 * being applied are brand new and evlist is taking ownership of the
	 * original reference count of 1.  If that is not the case it is up to
	 * the caller to increase the reference count.
	 */
	if (cpus != evlist->cpus) {
		FUNC1(evlist->cpus);
		evlist->cpus = FUNC0(cpus);
	}

	if (threads != evlist->threads) {
		FUNC4(evlist->threads);
		evlist->threads = FUNC3(threads);
	}

	FUNC2(evlist);
}