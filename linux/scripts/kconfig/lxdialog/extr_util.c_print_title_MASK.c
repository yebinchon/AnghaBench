#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_3__ {int /*<<< orphan*/  atr; } ;
struct TYPE_4__ {TYPE_1__ title; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ dlg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(WINDOW *dialog, const char *title, int width)
{
	if (title) {
		int tlen = FUNC0(width - 2, FUNC3(title));
		FUNC5(dialog, dlg.title.atr);
		FUNC1(dialog, 0, (width - tlen) / 2 - 1, ' ');
		FUNC2(dialog, 0, (width - tlen)/2, title, tlen);
		FUNC4(dialog, ' ');
	}
}