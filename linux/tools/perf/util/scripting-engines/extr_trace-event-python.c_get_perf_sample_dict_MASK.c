#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct perf_sample {int raw_size; scalar_t__ raw_data; int /*<<< orphan*/  transaction; int /*<<< orphan*/  weight; int /*<<< orphan*/  addr; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  period; int /*<<< orphan*/  time; int /*<<< orphan*/  ip; int /*<<< orphan*/  cpu; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  attr; } ;
struct evsel {TYPE_1__ core; } ;
struct addr_location {int /*<<< orphan*/  thread; TYPE_4__* sym; TYPE_3__* map; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_2__* dso; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct perf_sample*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct perf_sample*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct perf_sample*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct perf_sample*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct perf_sample*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *FUNC14(struct perf_sample *sample,
					 struct evsel *evsel,
					 struct addr_location *al,
					 PyObject *callchain)
{
	PyObject *dict, *dict_sample, *brstack, *brstacksym;

	dict = FUNC0();
	if (!dict)
		FUNC2("couldn't create Python dictionary");

	dict_sample = FUNC0();
	if (!dict_sample)
		FUNC2("couldn't create Python dictionary");

	FUNC7(dict, "ev_name", FUNC5(FUNC6(evsel)));
	FUNC7(dict, "attr", FUNC3((const char *)&evsel->core.attr, sizeof(evsel->core.attr)));

	FUNC7(dict_sample, "pid",
			FUNC4(sample->pid));
	FUNC7(dict_sample, "tid",
			FUNC4(sample->tid));
	FUNC7(dict_sample, "cpu",
			FUNC4(sample->cpu));
	FUNC7(dict_sample, "ip",
			FUNC1(sample->ip));
	FUNC7(dict_sample, "time",
			FUNC1(sample->time));
	FUNC7(dict_sample, "period",
			FUNC1(sample->period));
	FUNC7(dict_sample, "phys_addr",
			FUNC1(sample->phys_addr));
	FUNC7(dict_sample, "addr",
			FUNC1(sample->addr));
	FUNC12(dict_sample, sample, evsel);
	FUNC7(dict_sample, "weight",
			FUNC1(sample->weight));
	FUNC7(dict_sample, "transaction",
			FUNC1(sample->transaction));
	FUNC11(dict_sample, sample);
	FUNC7(dict, "sample", dict_sample);

	FUNC7(dict, "raw_buf", FUNC3(
			(const char *)sample->raw_data, sample->raw_size));
	FUNC7(dict, "comm",
			FUNC5(FUNC13(al->thread)));
	if (al->map) {
		FUNC7(dict, "dso",
			FUNC5(al->map->dso->name));
	}
	if (al->sym) {
		FUNC7(dict, "symbol",
			FUNC5(al->sym->name));
	}

	FUNC7(dict, "callchain", callchain);

	brstack = FUNC8(sample, al->thread);
	FUNC7(dict, "brstack", brstack);

	brstacksym = FUNC9(sample, al->thread);
	FUNC7(dict, "brstacksym", brstacksym);

	FUNC10(dict, sample, evsel);

	return dict;
}