#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct report {scalar_t__ mem_mode; int /*<<< orphan*/  symbol_ipc; } ;
struct perf_sample {int dummy; } ;
struct mem_info {int /*<<< orphan*/  daddr; } ;
struct hist_entry_iter {struct perf_sample* sample; struct evsel* evsel; struct hist_entry* he; } ;
struct hist_entry {struct mem_info* mem_info; struct branch_info* branch_info; } ;
struct evsel {int dummy; } ;
struct branch_info {int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
struct addr_location {int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {scalar_t__ cumulate_callchain; } ;

/* Variables and functions */
 scalar_t__ SORT_MODE__BRANCH ; 
 int FUNC0 (int /*<<< orphan*/ *,struct perf_sample*,struct evsel*) ; 
 int FUNC1 (struct hist_entry*,struct perf_sample*,struct evsel*,int /*<<< orphan*/ ) ; 
 scalar_t__ sort__mode ; 
 TYPE_1__ symbol_conf ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct hist_entry_iter *iter,
				      struct addr_location *al, bool single,
				      void *arg)
{
	int err = 0;
	struct report *rep = arg;
	struct hist_entry *he = iter->he;
	struct evsel *evsel = iter->evsel;
	struct perf_sample *sample = iter->sample;
	struct mem_info *mi;
	struct branch_info *bi;

	if (!FUNC2() && !rep->symbol_ipc)
		return 0;

	if (sort__mode == SORT_MODE__BRANCH) {
		bi = he->branch_info;
		err = FUNC0(&bi->from, sample, evsel);
		if (err)
			goto out;

		err = FUNC0(&bi->to, sample, evsel);

	} else if (rep->mem_mode) {
		mi = he->mem_info;
		err = FUNC0(&mi->daddr, sample, evsel);
		if (err)
			goto out;

		err = FUNC1(he, sample, evsel, al->addr);

	} else if (symbol_conf.cumulate_callchain) {
		if (single)
			err = FUNC1(he, sample, evsel, al->addr);
	} else {
		err = FUNC1(he, sample, evsel, al->addr);
	}

out:
	return err;
}