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
struct TYPE_4__ {scalar_t__ type; int config; int config1; int config2; scalar_t__ sample_period; } ;
struct TYPE_5__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct TYPE_6__ {int nr_entries; } ;
struct evlist {TYPE_3__ core; } ;

/* Variables and functions */
 scalar_t__ PERF_TYPE_RAW ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct evsel* FUNC1 (struct evlist*) ; 

__attribute__((used)) static int FUNC2(struct evlist *evlist)
{

	struct evsel *evsel = FUNC1(evlist);

	FUNC0("wrong number of entries", 1 == evlist->core.nr_entries);
	FUNC0("wrong type", PERF_TYPE_RAW == evsel->core.attr.type);
	FUNC0("wrong config",    10 == evsel->core.attr.config);
	FUNC0("wrong config1",    1 == evsel->core.attr.config1);
	FUNC0("wrong config2",    3 == evsel->core.attr.config2);
	/*
	 * The period value gets configured within perf_evlist__config,
	 * while this test executes only parse events method.
	 */
	FUNC0("wrong period",     0 == evsel->core.attr.sample_period);

	return 0;
}