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
struct TYPE_4__ {int /*<<< orphan*/  sym; } ;
struct popup_action {TYPE_1__ ms; } ;
struct hist_entry {scalar_t__ branch_info; } ;
struct hist_browser {int /*<<< orphan*/  b; TYPE_3__* hists; TYPE_2__* annotation_opts; int /*<<< orphan*/  hbt; int /*<<< orphan*/  env; } ;
struct evsel {int dummy; } ;
struct annotation {int /*<<< orphan*/  src; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr_entries; } ;
struct TYPE_5__ {int /*<<< orphan*/  objdump_path; } ;

/* Variables and functions */
 int FUNC0 (char) ; 
 struct hist_entry* FUNC1 (struct hist_browser*) ; 
 struct evsel* FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_1__*,struct evsel*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct annotation* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct hist_browser *browser, struct popup_action *act)
{
	struct evsel *evsel;
	struct annotation *notes;
	struct hist_entry *he;
	int err;

	if (!browser->annotation_opts->objdump_path &&
	    FUNC4(browser->env, &browser->annotation_opts->objdump_path))
		return 0;

	notes = FUNC5(act->ms.sym);
	if (!notes->src)
		return 0;

	evsel = FUNC2(browser->hists);
	err = FUNC3(&act->ms, evsel, browser->hbt,
				       browser->annotation_opts);
	he = FUNC1(browser);
	/*
	 * offer option to annotate the other branch source or target
	 * (if they exists) when returning from annotate
	 */
	if ((err == 'q' || err == FUNC0('c')) && he->branch_info)
		return 1;

	FUNC7(&browser->b, browser->hists->nr_entries);
	if (err)
		FUNC6(&browser->b);
	return 0;
}