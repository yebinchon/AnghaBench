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
typedef  scalar_t__ u64 ;
struct ui_browser {scalar_t__ top_idx; int rows; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLSMG_HLINE_CHAR ; 
 int /*<<< orphan*/  SLSMG_LLCORN_CHAR ; 
 int /*<<< orphan*/  SLSMG_RARROW_CHAR ; 
 int /*<<< orphan*/  SLSMG_ULCORN_CHAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_browser*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct ui_browser *browser,
					  unsigned int column,
					  u64 start, u64 end)
{
	unsigned int row, end_row;

	FUNC2(1);

	if (start >= browser->top_idx) {
		row = start - browser->top_idx;
		FUNC4(browser, row, column);
		FUNC3(SLSMG_ULCORN_CHAR);
		FUNC4(browser, row, column + 1);
		FUNC0(2);

		if (++row == 0)
			goto out;
	} else
		row = 0;

	if (end >= browser->top_idx + browser->rows)
		end_row = browser->rows - 1;
	else
		end_row = end - browser->top_idx;

	FUNC4(browser, row, column);
	FUNC1(end_row - row + 1);

	FUNC4(browser, end_row, column);
	if (end < browser->top_idx + browser->rows) {
		FUNC3(SLSMG_LLCORN_CHAR);
		FUNC4(browser, end_row, column + 1);
		FUNC3(SLSMG_HLINE_CHAR);
		FUNC4(browser, end_row, column + 2);
		FUNC3(SLSMG_RARROW_CHAR);
	}
out:
	FUNC2(0);
}