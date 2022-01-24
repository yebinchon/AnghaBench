#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; scalar_t__ config; int exclude_user; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ PERF_COUNT_HW_CPU_CYCLES ; 
 scalar_t__ PERF_TYPE_HARDWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct evsel* FUNC1 (struct evlist*) ; 

__attribute__((used)) static int FUNC2(struct evlist *evlist)
{
	struct evsel *evsel = FUNC1(evlist);

	FUNC0("wrong type", evsel->core.attr.type == PERF_TYPE_HARDWARE);
	FUNC0("wrong config", evsel->core.attr.config == PERF_COUNT_HW_CPU_CYCLES);
	FUNC0("wrong exclude_user", evsel->core.attr.exclude_user);
	return 0;
}