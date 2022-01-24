#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct symbol {char* name; } ;
struct TYPE_9__ {int min_pcnt; } ;
struct perf_top {TYPE_3__* sym_evsel; scalar_t__ zero; TYPE_2__* evlist; TYPE_4__ annotation_opts; struct hist_entry* sym_filter_entry; } ;
struct TYPE_6__ {int /*<<< orphan*/  map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; int /*<<< orphan*/  hists; } ;
struct evsel {int dummy; } ;
struct annotation {int /*<<< orphan*/  lock; int /*<<< orphan*/ * src; } ;
struct TYPE_8__ {int /*<<< orphan*/  idx; } ;
struct TYPE_7__ {scalar_t__ enabled; } ;

/* Variables and functions */
 struct evsel* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct symbol*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct symbol*,int /*<<< orphan*/ ) ; 
 struct annotation* FUNC8 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC9 (struct symbol*,struct evsel*) ; 

__attribute__((used)) static void FUNC10(struct perf_top *top)
{
	struct hist_entry *he = top->sym_filter_entry;
	struct evsel *evsel;
	struct annotation *notes;
	struct symbol *symbol;
	int more;

	if (!he)
		return;

	evsel = FUNC0(he->hists);

	symbol = he->ms.sym;
	notes = FUNC8(symbol);

	FUNC3(&notes->lock);

	FUNC9(symbol, evsel);

	if (notes->src == NULL)
		goto out_unlock;

	FUNC2("Showing %s for %s\n", FUNC1(top->sym_evsel), symbol->name);
	FUNC2("  Events  Pcnt (>=%d%%)\n", top->annotation_opts.min_pcnt);

	more = FUNC6(symbol, he->ms.map, top->sym_evsel, &top->annotation_opts);

	if (top->evlist->enabled) {
		if (top->zero)
			FUNC7(symbol, top->sym_evsel->idx);
		else
			FUNC5(symbol, top->sym_evsel->idx);
	}
	if (more != 0)
		FUNC2("%d lines not displayed, maybe increase display entries [e]\n", more);
out_unlock:
	FUNC4(&notes->lock);
}