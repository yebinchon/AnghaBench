#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  threads; int /*<<< orphan*/  own_cpus; int /*<<< orphan*/  cpus; int /*<<< orphan*/  node; } ;
struct evsel {int /*<<< orphan*/  name; int /*<<< orphan*/  group_name; TYPE_2__ core; int /*<<< orphan*/  cgrp; int /*<<< orphan*/ * evlist; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* fini ) (struct evsel*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC5 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_1__ perf_evsel__object ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct evsel *evsel)
{
	FUNC0(FUNC2(&evsel->core.node));
	FUNC0(evsel->evlist == NULL);
	FUNC5(evsel);
	FUNC6(&evsel->core);
	FUNC7(&evsel->core);
	FUNC4(evsel);
	FUNC1(evsel->cgrp);
	FUNC3(evsel->core.cpus);
	FUNC3(evsel->core.own_cpus);
	FUNC8(evsel->core.threads);
	FUNC10(&evsel->group_name);
	FUNC10(&evsel->name);
	perf_evsel__object.fini(evsel);
}