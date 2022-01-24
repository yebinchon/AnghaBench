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
struct perf_evsel {int /*<<< orphan*/  node; } ;
struct perf_evlist {int nr_entries; int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_evlist*,struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct perf_evlist *evlist,
		      struct perf_evsel *evsel)
{
	FUNC1(&evsel->node, &evlist->entries);
	evlist->nr_entries += 1;
	FUNC0(evlist, evsel);
}