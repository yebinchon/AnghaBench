#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct symbol {int /*<<< orphan*/  name; } ;
struct perf_top {TYPE_2__* sym_filter_entry; } ;
struct perf_sample {int dummy; } ;
struct TYPE_8__ {TYPE_5__* map; struct symbol* sym; } ;
struct hist_entry {TYPE_4__* hists; TYPE_3__ ms; } ;
struct evsel {int dummy; } ;
struct annotation {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  erange_warned; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {struct symbol* sym; } ;
struct TYPE_7__ {TYPE_1__ ms; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERANGE ; 
 int FUNC0 (struct hist_entry*,struct perf_sample*,struct evsel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct annotation* FUNC6 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,struct symbol*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ use_browser ; 

__attribute__((used)) static void FUNC9(struct perf_top *top,
					struct hist_entry *he,
					struct perf_sample *sample,
					struct evsel *evsel, u64 ip)
{
	struct annotation *notes;
	struct symbol *sym = he->ms.sym;
	int err = 0;

	if (sym == NULL || (use_browser == 0 &&
			    (top->sym_filter_entry == NULL ||
			     top->sym_filter_entry->ms.sym != sym)))
		return;

	notes = FUNC6(sym);

	if (FUNC3(&notes->lock))
		return;

	err = FUNC0(he, sample, evsel, ip);

	FUNC4(&notes->lock);

	if (FUNC8(err)) {
		/*
		 * This function is now called with he->hists->lock held.
		 * Release it before going to sleep.
		 */
		FUNC4(&he->hists->lock);

		if (err == -ERANGE && !he->ms.map->erange_warned)
			FUNC7(he->ms.map, sym, ip);
		else if (err == -ENOMEM) {
			FUNC1("Not enough memory for annotating '%s' symbol!\n",
			       sym->name);
			FUNC5(1);
		}

		FUNC2(&he->hists->lock);
	}
}