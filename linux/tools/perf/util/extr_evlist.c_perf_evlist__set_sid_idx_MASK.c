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
struct perf_sample_id {int idx; int cpu; int tid; } ;
struct TYPE_5__ {int /*<<< orphan*/  system_wide; } ;
struct evsel {TYPE_2__ core; } ;
struct TYPE_6__ {scalar_t__ threads; TYPE_1__* cpus; } ;
struct evlist {TYPE_3__ core; } ;
struct TYPE_4__ {int* map; } ;

/* Variables and functions */
 struct perf_sample_id* FUNC0 (struct evsel*,int,int) ; 
 int FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct evlist *evlist,
				     struct evsel *evsel, int idx, int cpu,
				     int thread)
{
	struct perf_sample_id *sid = FUNC0(evsel, cpu, thread);
	sid->idx = idx;
	if (evlist->core.cpus && cpu >= 0)
		sid->cpu = evlist->core.cpus->map[cpu];
	else
		sid->cpu = -1;
	if (!evsel->core.system_wide && evlist->core.threads && thread >= 0)
		sid->tid = FUNC1(evlist->core.threads, thread);
	else
		sid->tid = -1;
}