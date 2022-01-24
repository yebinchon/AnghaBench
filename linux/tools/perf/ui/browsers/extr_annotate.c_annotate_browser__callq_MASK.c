#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  title ;
struct map_symbol {int /*<<< orphan*/  map; int /*<<< orphan*/  sym; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {TYPE_2__* evlist; } ;
struct TYPE_12__ {TYPE_6__* sym; } ;
struct TYPE_13__ {TYPE_3__ target; } ;
struct disasm_line {TYPE_4__ ops; } ;
struct annotation {int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {struct map_symbol* priv; } ;
struct annotate_browser {TYPE_5__ b; TYPE_7__* opts; int /*<<< orphan*/  selection; } ;
struct TYPE_16__ {int /*<<< orphan*/  percent_type; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {int /*<<< orphan*/  nr_entries; } ;
struct TYPE_11__ {TYPE_1__ core; } ;

/* Variables and functions */
 int SYM_TITLE_MAX_SIZE ; 
 struct disasm_line* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 struct annotation* FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,struct evsel*,struct hist_browser_timer*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static bool FUNC10(struct annotate_browser *browser,
				    struct evsel *evsel,
				    struct hist_browser_timer *hbt)
{
	struct map_symbol *ms = browser->b.priv;
	struct disasm_line *dl = FUNC0(browser->selection);
	struct annotation *notes;
	char title[SYM_TITLE_MAX_SIZE];

	if (!dl->ops.target.sym) {
		FUNC9("The called function was not found.");
		return true;
	}

	notes = FUNC4(dl->ops.target.sym);
	FUNC1(&notes->lock);

	if (!FUNC5(dl->ops.target.sym, evsel->evlist->core.nr_entries)) {
		FUNC2(&notes->lock);
		FUNC7("Not enough memory for annotating '%s' symbol!\n",
			    dl->ops.target.sym->name);
		return true;
	}

	FUNC2(&notes->lock);
	FUNC6(dl->ops.target.sym, ms->map, evsel, hbt, browser->opts);
	FUNC3(ms->sym, ms->map, title, sizeof(title), browser->opts->percent_type);
	FUNC8(&browser->b, title);
	return true;
}