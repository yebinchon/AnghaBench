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
typedef  int /*<<< orphan*/  chtype ;
typedef  int /*<<< orphan*/  WINDOW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * stdscr ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(WINDOW *win,
		int starty,
		int startx,
		int width,
		const char *string,
		chtype color)
{      int length, x, y;
	float temp;


	if (win == NULL)
		win = stdscr;
	FUNC0(win, y, x);
	if (startx != 0)
		x = startx;
	if (starty != 0)
		y = starty;
	if (width == 0)
		width = 80;

	length = FUNC3(string);
	temp = (width - length) / 2;
	x = startx + (int)temp;
	(void) FUNC4(win, color);
	FUNC1(win, y, x, "%s", string);
	FUNC2();
}