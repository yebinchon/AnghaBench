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
struct ui_browser {int width; int (* refresh ) (struct ui_browser*) ;scalar_t__ nr_entries; scalar_t__ no_samples_msg; scalar_t__ rows; int /*<<< orphan*/  x; scalar_t__ extra_title_lines; scalar_t__ y; scalar_t__ navkeypressed; int /*<<< orphan*/  use_navkeypressed; } ;

/* Variables and functions */
 int /*<<< orphan*/  HE_COLORSET_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC4 (struct ui_browser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ui_browser *browser)
{
	int row;
	int width = browser->width;

	row = browser->refresh(browser);
	FUNC4(browser, HE_COLORSET_NORMAL);

	if (!browser->use_navkeypressed || browser->navkeypressed)
		FUNC3(browser);
	else
		width += 1;

	FUNC0(browser->y + row + browser->extra_title_lines, browser->x,
			  browser->rows - row, width, ' ');

	if (browser->nr_entries == 0 && browser->no_samples_msg)
		FUNC1(NULL, browser->no_samples_msg, NULL);
	return 0;
}