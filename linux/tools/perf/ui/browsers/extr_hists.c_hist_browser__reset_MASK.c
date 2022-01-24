#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nr_entries; } ;
struct hist_browser {TYPE_1__ b; scalar_t__ nr_callchain_rows; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hist_browser*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hist_browser*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct hist_browser *browser)
{
	/*
	 * The hists__remove_entry_filter() already folds non-filtered
	 * entries so we can assume it has 0 callchain rows.
	 */
	browser->nr_callchain_rows = 0;

	FUNC2(browser);
	browser->b.nr_entries = FUNC0(browser);
	FUNC1(&browser->b);
	FUNC3(&browser->b);
}