#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ type; scalar_t__ config; int exclude_guest; int /*<<< orphan*/  precise_ip; int /*<<< orphan*/  exclude_host; int /*<<< orphan*/  exclude_hv; int /*<<< orphan*/  exclude_kernel; int /*<<< orphan*/  exclude_user; } ;
struct TYPE_6__ {TYPE_2__ attr; } ;
struct evsel {int sample_read; struct evsel* leader; int /*<<< orphan*/  group_name; TYPE_3__ core; } ;
struct TYPE_4__ {int nr_entries; } ;
struct evlist {TYPE_1__ core; } ;

/* Variables and functions */
 scalar_t__ PERF_COUNT_HW_BRANCH_MISSES ; 
 scalar_t__ PERF_COUNT_HW_CACHE_MISSES ; 
 scalar_t__ PERF_COUNT_HW_CPU_CYCLES ; 
 scalar_t__ PERF_TYPE_HARDWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct evsel* FUNC1 (struct evlist*) ; 
 struct evsel* FUNC2 (struct evsel*) ; 

__attribute__((used)) static int FUNC3(struct evlist *evlist)
{
	struct evsel *evsel, *leader;

	FUNC0("wrong number of entries", 3 == evlist->core.nr_entries);

	/* cycles - sampling group leader */
	evsel = leader = FUNC1(evlist);
	FUNC0("wrong type", PERF_TYPE_HARDWARE == evsel->core.attr.type);
	FUNC0("wrong config",
			PERF_COUNT_HW_CPU_CYCLES == evsel->core.attr.config);
	FUNC0("wrong exclude_user", !evsel->core.attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
	FUNC0("wrong exclude_hv", !evsel->core.attr.exclude_hv);
	FUNC0("wrong exclude guest", evsel->core.attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->core.attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->core.attr.precise_ip);
	FUNC0("wrong group name", !evsel->group_name);
	FUNC0("wrong leader", evsel->leader == leader);
	FUNC0("wrong sample_read", evsel->sample_read);

	/* cache-misses - not sampling */
	evsel = FUNC2(evsel);
	FUNC0("wrong type", PERF_TYPE_HARDWARE == evsel->core.attr.type);
	FUNC0("wrong config",
			PERF_COUNT_HW_CACHE_MISSES == evsel->core.attr.config);
	FUNC0("wrong exclude_user", !evsel->core.attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
	FUNC0("wrong exclude_hv", !evsel->core.attr.exclude_hv);
	FUNC0("wrong exclude guest", evsel->core.attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->core.attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->core.attr.precise_ip);
	FUNC0("wrong leader", evsel->leader == leader);
	FUNC0("wrong sample_read", evsel->sample_read);

	/* branch-misses - not sampling */
	evsel = FUNC2(evsel);
	FUNC0("wrong type", PERF_TYPE_HARDWARE == evsel->core.attr.type);
	FUNC0("wrong config",
			PERF_COUNT_HW_BRANCH_MISSES == evsel->core.attr.config);
	FUNC0("wrong exclude_user", !evsel->core.attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
	FUNC0("wrong exclude_hv", !evsel->core.attr.exclude_hv);
	FUNC0("wrong exclude guest", evsel->core.attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->core.attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->core.attr.precise_ip);
	FUNC0("wrong group name", !evsel->group_name);
	FUNC0("wrong leader", evsel->leader == leader);
	FUNC0("wrong sample_read", evsel->sample_read);

	return 0;
}