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
struct perf_evsel {scalar_t__ own_cpus; scalar_t__ cpus; int /*<<< orphan*/  threads; } ;
struct perf_evlist {scalar_t__ cpus; int /*<<< orphan*/  threads; scalar_t__ has_user_cpus; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct perf_evlist *evlist,
					  struct perf_evsel *evsel)
{
	/*
	 * We already have cpus for evsel (via PMU sysfs) so
	 * keep it, if there's no target cpu list defined.
	 */
	if (!evsel->own_cpus || evlist->has_user_cpus) {
		FUNC1(evsel->cpus);
		evsel->cpus = FUNC0(evlist->cpus);
	} else if (evsel->cpus != evsel->own_cpus) {
		FUNC1(evsel->cpus);
		evsel->cpus = FUNC0(evsel->own_cpus);
	}

	FUNC3(evsel->threads);
	evsel->threads = FUNC2(evlist->threads);
}