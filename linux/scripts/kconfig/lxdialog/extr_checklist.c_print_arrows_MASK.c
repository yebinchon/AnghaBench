#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_9__ {int /*<<< orphan*/  atr; } ;
struct TYPE_8__ {int /*<<< orphan*/  atr; } ;
struct TYPE_7__ {int /*<<< orphan*/  atr; } ;
struct TYPE_6__ {int /*<<< orphan*/  atr; } ;
struct TYPE_10__ {TYPE_4__ menubox_border; TYPE_3__ darrow; TYPE_2__ menubox; TYPE_1__ uarrow; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACS_DARROW ; 
 int /*<<< orphan*/  ACS_HLINE ; 
 int /*<<< orphan*/  ACS_UARROW ; 
 TYPE_5__ dlg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC4(WINDOW * win, int choice, int item_no, int scroll,
	     int y, int x, int height)
{
	FUNC3(win, y, x);

	if (scroll > 0) {
		FUNC2(win, dlg.uarrow.atr);
		FUNC0(win, ACS_UARROW);
		FUNC1(win, "(-)");
	} else {
		FUNC2(win, dlg.menubox.atr);
		FUNC0(win, ACS_HLINE);
		FUNC0(win, ACS_HLINE);
		FUNC0(win, ACS_HLINE);
		FUNC0(win, ACS_HLINE);
	}

	y = y + height + 1;
	FUNC3(win, y, x);

	if ((height < item_no) && (scroll + choice < item_no - 1)) {
		FUNC2(win, dlg.darrow.atr);
		FUNC0(win, ACS_DARROW);
		FUNC1(win, "(+)");
	} else {
		FUNC2(win, dlg.menubox_border.atr);
		FUNC0(win, ACS_HLINE);
		FUNC0(win, ACS_HLINE);
		FUNC0(win, ACS_HLINE);
		FUNC0(win, ACS_HLINE);
	}
}