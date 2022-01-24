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
 int ERR ; 
 int /*<<< orphan*/  FALSE ; 
 int KEY_ESC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(WINDOW *win)
{
	int key;
	int key2;
	int key3;

	FUNC1(win, TRUE);
	FUNC0(win, FALSE);
	key = FUNC3(win);
	key2 = FUNC3(win);
	do {
		key3 = FUNC3(win);
	} while (key3 != ERR);
	FUNC1(win, FALSE);
	FUNC0(win, TRUE);
	if (key == KEY_ESC && key2 == ERR)
		return KEY_ESC;
	else if (key != ERR && key != KEY_ESC && key2 == ERR)
		FUNC2(key);

	return -1;
}