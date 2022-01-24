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
struct ui_browser {int rows; int /*<<< orphan*/  (* write ) (struct ui_browser*,struct rb_node*,int) ;struct rb_node* top; int /*<<< orphan*/  entries; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 struct rb_node* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rb_node* FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,struct rb_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_browser*,int,int /*<<< orphan*/ ) ; 

unsigned int FUNC4(struct ui_browser *browser)
{
	struct rb_node *nd;
	int row = 0;

	if (browser->top == NULL)
                browser->top = FUNC0(browser->entries);

	nd = browser->top;

	while (nd != NULL) {
		FUNC3(browser, row, 0);
		browser->write(browser, nd, row);
		if (++row == browser->rows)
			break;
		nd = FUNC1(nd);
	}

	return row;
}