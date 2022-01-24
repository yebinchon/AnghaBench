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
struct ui_progress {int total; int curr; scalar_t__ size; scalar_t__ title; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  HE_COLORSET_SELECTED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int SLtt_Screen_Cols ; 
 int SLtt_Screen_Rows ; 
 int /*<<< orphan*/  FUNC6 (struct ui_progress*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ui__lock ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ use_browser ; 

__attribute__((used)) static void FUNC10(struct ui_progress *p)
{
	char buf[100], *title = (char *) p->title;
	int bar, y;
	/*
	 * FIXME: We should have a per UI backend way of showing progress,
	 * stdio will just show a percentage as NN%, etc.
	 */
	if (use_browser <= 0)
		return;

	if (p->total == 0)
		return;

	if (p->size) {
		FUNC6(p, buf, sizeof(buf));
		title = buf;
	}

	FUNC9(false);
	FUNC7(&ui__lock);
	y = SLtt_Screen_Rows / 2 - 2;
	FUNC4(0);
	FUNC0(y, 0, 3, SLtt_Screen_Cols);
	FUNC2(y++, 1);
	FUNC5(title);
	FUNC1(y, 1, 1, SLtt_Screen_Cols - 2, ' ');
	FUNC4(HE_COLORSET_SELECTED);
	bar = ((SLtt_Screen_Cols - 2) * p->curr) / p->total;
	FUNC1(y, 1, 1, bar, ' ');
	FUNC3();
	FUNC8(&ui__lock);
}