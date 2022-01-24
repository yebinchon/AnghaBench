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
struct ui_browser {int navkeypressed; int index; int nr_entries; int top_idx; int rows; int /*<<< orphan*/  (* seek ) (struct ui_browser*,int,int /*<<< orphan*/ ) ;scalar_t__ horiz_scroll; scalar_t__ columns; scalar_t__ use_navkeypressed; int /*<<< orphan*/  helpline; int /*<<< orphan*/  title; int /*<<< orphan*/  (* refresh_dimensions ) (struct ui_browser*) ;} ;
typedef  int off_t ;

/* Variables and functions */
#define  K_DOWN 135 
#define  K_END 134 
#define  K_HOME 133 
#define  K_LEFT 132 
#define  K_PGDN 131 
#define  K_PGUP 130 
 int K_RESIZE ; 
#define  K_RIGHT 129 
#define  K_UP 128 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC6 (struct ui_browser*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_browser*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ui_browser*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ui_browser*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ui_browser*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  ui__lock ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct ui_browser *browser, int delay_secs)
{
	int err, key;

	while (1) {
		off_t offset;

		FUNC3(&ui__lock);
		err = FUNC1(browser);
		FUNC0();
		FUNC4(&ui__lock);
		if (err < 0)
			break;

		key = FUNC11(delay_secs);

		if (key == K_RESIZE) {
			FUNC12(false);
			browser->refresh_dimensions(browser);
			FUNC2(browser, browser->title);
			FUNC14(browser->helpline);
			continue;
		}

		if (browser->use_navkeypressed && !browser->navkeypressed) {
			if (key == K_DOWN || key == K_UP ||
			    (browser->columns && (key == K_LEFT || key == K_RIGHT)) ||
			    key == K_PGDN || key == K_PGUP ||
			    key == K_HOME || key == K_END ||
			    key == ' ') {
				browser->navkeypressed = true;
				continue;
			} else
				return key;
		}

		switch (key) {
		case K_DOWN:
			if (browser->index == browser->nr_entries - 1)
				break;
			++browser->index;
			if (browser->index == browser->top_idx + browser->rows) {
				++browser->top_idx;
				browser->seek(browser, +1, SEEK_CUR);
			}
			break;
		case K_UP:
			if (browser->index == 0)
				break;
			--browser->index;
			if (browser->index < browser->top_idx) {
				--browser->top_idx;
				browser->seek(browser, -1, SEEK_CUR);
			}
			break;
		case K_RIGHT:
			if (!browser->columns)
				goto out;
			if (browser->horiz_scroll < browser->columns - 1)
				++browser->horiz_scroll;
			break;
		case K_LEFT:
			if (!browser->columns)
				goto out;
			if (browser->horiz_scroll != 0)
				--browser->horiz_scroll;
			break;
		case K_PGDN:
		case ' ':
			if (browser->top_idx + browser->rows > browser->nr_entries - 1)
				break;

			offset = browser->rows;
			if (browser->index + offset > browser->nr_entries - 1)
				offset = browser->nr_entries - 1 - browser->index;
			browser->index += offset;
			browser->top_idx += offset;
			browser->seek(browser, +offset, SEEK_CUR);
			break;
		case K_PGUP:
			if (browser->top_idx == 0)
				break;

			if (browser->top_idx < browser->rows)
				offset = browser->top_idx;
			else
				offset = browser->rows;

			browser->index -= offset;
			browser->top_idx -= offset;
			browser->seek(browser, -offset, SEEK_CUR);
			break;
		case K_HOME:
			FUNC13(browser);
			break;
		case K_END:
			offset = browser->rows - 1;
			if (offset >= browser->nr_entries)
				offset = browser->nr_entries - 1;

			browser->index = browser->nr_entries - 1;
			browser->top_idx = browser->index - offset;
			browser->seek(browser, -offset, SEEK_END);
			break;
		default:
		out:
			return key;
		}
	}
	return -1;
}