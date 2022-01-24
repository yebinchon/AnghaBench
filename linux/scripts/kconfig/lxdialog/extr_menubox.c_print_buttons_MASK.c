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
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(WINDOW * win, int height, int width, int selected)
{
	int x = width / 2 - 28;
	int y = height - 2;

	FUNC0(win, "Select", y, x, selected == 0);
	FUNC0(win, " Exit ", y, x + 12, selected == 1);
	FUNC0(win, " Help ", y, x + 24, selected == 2);
	FUNC0(win, " Save ", y, x + 36, selected == 3);
	FUNC0(win, " Load ", y, x + 48, selected == 4);

	FUNC1(win, y, x + 1 + 12 * selected);
	FUNC2(win);
}