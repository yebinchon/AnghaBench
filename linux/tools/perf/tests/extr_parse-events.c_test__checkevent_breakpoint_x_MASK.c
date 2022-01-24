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
struct TYPE_5__ {scalar_t__ type; scalar_t__ config; scalar_t__ bp_type; int bp_len; } ;
struct TYPE_6__ {TYPE_2__ attr; } ;
struct evsel {TYPE_3__ core; } ;
struct TYPE_4__ {int nr_entries; } ;
struct evlist {TYPE_1__ core; } ;

/* Variables and functions */
 scalar_t__ HW_BREAKPOINT_X ; 
 scalar_t__ PERF_TYPE_BREAKPOINT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct evsel* FUNC1 (struct evlist*) ; 

__attribute__((used)) static int FUNC2(struct evlist *evlist)
{
	struct evsel *evsel = FUNC1(evlist);

	FUNC0("wrong number of entries", 1 == evlist->core.nr_entries);
	FUNC0("wrong type", PERF_TYPE_BREAKPOINT == evsel->core.attr.type);
	FUNC0("wrong config", 0 == evsel->core.attr.config);
	FUNC0("wrong bp_type",
			HW_BREAKPOINT_X == evsel->core.attr.bp_type);
	FUNC0("wrong bp_len", sizeof(long) == evsel->core.attr.bp_len);
	return 0;
}