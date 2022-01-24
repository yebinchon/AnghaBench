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
struct symbol {int /*<<< orphan*/  name; } ;
struct perf_top {struct hist_entry* sym_filter_entry; int /*<<< orphan*/  annotation_opts; TYPE_3__* evlist; } ;
struct map {TYPE_4__* dso; } ;
struct TYPE_5__ {struct map* map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; int /*<<< orphan*/  hists; } ;
struct evsel {int dummy; } ;
struct annotation {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_8__ {scalar_t__ symtab_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr_entries; } ;
struct TYPE_7__ {TYPE_2__ core; } ;

/* Variables and functions */
 int BUFSIZ ; 
 scalar_t__ DSO_BINARY_TYPE__KALLSYMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 struct evsel* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct symbol*,struct map*,struct evsel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct annotation* FUNC7 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC8 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct symbol*,struct map*,int,char*,int) ; 

__attribute__((used)) static int FUNC10(struct perf_top *top, struct hist_entry *he)
{
	struct evsel *evsel;
	struct symbol *sym;
	struct annotation *notes;
	struct map *map;
	int err = -1;

	if (!he || !he->ms.sym)
		return -1;

	evsel = FUNC1(he->hists);

	sym = he->ms.sym;
	map = he->ms.map;

	/*
	 * We can't annotate with just /proc/kallsyms
	 */
	if (map->dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS &&
	    !FUNC0(map->dso)) {
		FUNC2("Can't annotate %s: No vmlinux file was found in the "
		       "path\n", sym->name);
		FUNC5(1);
		return -1;
	}

	notes = FUNC7(sym);
	FUNC3(&notes->lock);

	if (!FUNC8(sym, top->evlist->core.nr_entries)) {
		FUNC4(&notes->lock);
		FUNC2("Not enough memory for annotating '%s' symbol!\n",
		       sym->name);
		FUNC5(1);
		return err;
	}

	err = FUNC6(sym, map, evsel, 0, &top->annotation_opts, NULL);
	if (err == 0) {
		top->sym_filter_entry = he;
	} else {
		char msg[BUFSIZ];
		FUNC9(sym, map, err, msg, sizeof(msg));
		FUNC2("Couldn't annotate %s: %s\n", sym->name, msg);
	}

	FUNC4(&notes->lock);
	return err;
}