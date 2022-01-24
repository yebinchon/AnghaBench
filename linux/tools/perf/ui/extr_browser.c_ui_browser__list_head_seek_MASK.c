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
struct ui_browser {scalar_t__ nr_entries; struct list_head* top; struct list_head* entries; } ;
struct list_head {int /*<<< orphan*/  prev; int /*<<< orphan*/  next; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct list_head* FUNC1 (struct ui_browser*,int /*<<< orphan*/ ) ; 
 struct list_head* FUNC2 (struct ui_browser*,int /*<<< orphan*/ ) ; 

void FUNC3(struct ui_browser *browser, off_t offset, int whence)
{
	struct list_head *head = browser->entries;
	struct list_head *pos;

	if (browser->nr_entries == 0)
		return;

	switch (whence) {
	case SEEK_SET:
		pos = FUNC1(browser, head->next);
		break;
	case SEEK_CUR:
		pos = browser->top;
		break;
	case SEEK_END:
		pos = FUNC2(browser, head->prev);
		break;
	default:
		return;
	}

	FUNC0(pos != NULL);

	if (offset > 0) {
		while (offset-- != 0)
			pos = FUNC1(browser, pos->next);
	} else {
		while (offset++ != 0)
			pos = FUNC2(browser, pos->prev);
	}

	browser->top = pos;
}