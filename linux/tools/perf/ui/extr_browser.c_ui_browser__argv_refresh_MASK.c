#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ui_browser {unsigned int top_idx; unsigned int nr_entries; unsigned int rows; int /*<<< orphan*/  (* write ) (struct ui_browser*,char**,unsigned int) ;int /*<<< orphan*/  (* filter ) (struct ui_browser*,char*) ;int /*<<< orphan*/ * entries; int /*<<< orphan*/ * top; } ;

/* Variables and functions */
 scalar_t__ SLtt_Screen_Rows ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,char**,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_browser*,unsigned int,int /*<<< orphan*/ ) ; 

unsigned int FUNC4(struct ui_browser *browser)
{
	unsigned int row = 0, idx = browser->top_idx;
	char **pos;

	if (browser->top == NULL)
		browser->top = browser->entries;

	pos = (char **)browser->top;
	while (idx < browser->nr_entries &&
	       row < (unsigned)SLtt_Screen_Rows - 1) {
		FUNC0(pos < (char **)browser->entries + browser->nr_entries);
		if (!browser->filter || !browser->filter(browser, *pos)) {
			FUNC3(browser, row, 0);
			browser->write(browser, pos, row);
			if (++row == browser->rows)
				break;
		}

		++idx;
		++pos;
	}

	return row;
}