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
struct TYPE_5__ {scalar_t__ type; scalar_t__ config; int exclude_user; int exclude_kernel; int exclude_hv; int exclude_guest; int /*<<< orphan*/  precise_ip; int /*<<< orphan*/  exclude_host; } ;
struct TYPE_6__ {int nr_members; TYPE_2__ attr; } ;
struct evsel {int /*<<< orphan*/  sample_read; TYPE_3__ core; struct evsel* leader; } ;
struct TYPE_4__ {int nr_entries; } ;
struct evlist {int nr_groups; TYPE_1__ core; } ;

/* Variables and functions */
 scalar_t__ PERF_COUNT_HW_CACHE_REFERENCES ; 
 scalar_t__ PERF_COUNT_HW_CPU_CYCLES ; 
 scalar_t__ PERF_COUNT_SW_PAGE_FAULTS ; 
 scalar_t__ PERF_TYPE_HARDWARE ; 
 scalar_t__ PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct evsel* FUNC1 (struct evlist*) ; 
 int FUNC2 (struct evsel*) ; 
 int FUNC3 (struct evsel*) ; 
 struct evsel* FUNC4 (struct evsel*) ; 

__attribute__((used)) static int FUNC5(struct evlist *evlist)
{
	struct evsel *evsel, *leader;

	FUNC0("wrong number of entries", 3 == evlist->core.nr_entries);
	FUNC0("wrong number of groups", 1 == evlist->nr_groups);

	/* faults + :ku modifier */
	evsel = leader = FUNC1(evlist);
	FUNC0("wrong type", PERF_TYPE_SOFTWARE == evsel->core.attr.type);
	FUNC0("wrong config",
			PERF_COUNT_SW_PAGE_FAULTS == evsel->core.attr.config);
	FUNC0("wrong exclude_user", !evsel->core.attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->core.attr.exclude_hv);
	FUNC0("wrong exclude guest", !evsel->core.attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->core.attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->core.attr.precise_ip);
	FUNC0("wrong leader", FUNC3(evsel));
	FUNC0("wrong core.nr_members", evsel->core.nr_members == 2);
	FUNC0("wrong group_idx", FUNC2(evsel) == 0);
	FUNC0("wrong sample_read", !evsel->sample_read);

	/* cache-references + :u modifier */
	evsel = FUNC4(evsel);
	FUNC0("wrong type", PERF_TYPE_HARDWARE == evsel->core.attr.type);
	FUNC0("wrong config",
			PERF_COUNT_HW_CACHE_REFERENCES == evsel->core.attr.config);
	FUNC0("wrong exclude_user", !evsel->core.attr.exclude_user);
	FUNC0("wrong exclude_kernel", evsel->core.attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->core.attr.exclude_hv);
	FUNC0("wrong exclude guest", evsel->core.attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->core.attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->core.attr.precise_ip);
	FUNC0("wrong leader", evsel->leader == leader);
	FUNC0("wrong group_idx", FUNC2(evsel) == 1);
	FUNC0("wrong sample_read", !evsel->sample_read);

	/* cycles:k */
	evsel = FUNC4(evsel);
	FUNC0("wrong type", PERF_TYPE_HARDWARE == evsel->core.attr.type);
	FUNC0("wrong config",
			PERF_COUNT_HW_CPU_CYCLES == evsel->core.attr.config);
	FUNC0("wrong exclude_user", evsel->core.attr.exclude_user);
	FUNC0("wrong exclude_kernel", !evsel->core.attr.exclude_kernel);
	FUNC0("wrong exclude_hv", evsel->core.attr.exclude_hv);
	FUNC0("wrong exclude guest", !evsel->core.attr.exclude_guest);
	FUNC0("wrong exclude host", !evsel->core.attr.exclude_host);
	FUNC0("wrong precise_ip", !evsel->core.attr.precise_ip);
	FUNC0("wrong leader", FUNC3(evsel));
	FUNC0("wrong sample_read", !evsel->sample_read);

	return 0;
}