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
struct ui_browser {unsigned int top_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLSMG_LTEE_CHAR ; 
 int /*<<< orphan*/  SLSMG_ULCORN_CHAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_browser*,unsigned int,unsigned int) ; 

void FUNC4(struct ui_browser *browser, unsigned int column,
			    unsigned int row, bool arrow_down)
{
	unsigned int end_row;

	if (row >= browser->top_idx)
		end_row = row - browser->top_idx;
	else
		return;

	FUNC1(1);

	if (arrow_down) {
		FUNC3(browser, end_row, column - 1);
		FUNC2(SLSMG_ULCORN_CHAR);
		FUNC3(browser, end_row, column);
		FUNC0(2);
		FUNC3(browser, end_row + 1, column - 1);
		FUNC2(SLSMG_LTEE_CHAR);
	} else {
		FUNC3(browser, end_row, column - 1);
		FUNC2(SLSMG_LTEE_CHAR);
		FUNC3(browser, end_row, column);
		FUNC0(2);
	}

	FUNC1(0);
}