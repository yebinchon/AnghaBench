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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLtt_Screen_Cols ; 
 int SLtt_Screen_Rows ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ui__lock ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ use_browser ; 

__attribute__((used)) static void FUNC6(void)
{
	int y;

	if (use_browser <= 0)
		return;

	FUNC5(false);
	FUNC3(&ui__lock);
	y = SLtt_Screen_Rows / 2 - 2;
	FUNC2(0);
	FUNC0(y, 0, 3, SLtt_Screen_Cols, ' ');
	FUNC1();
	FUNC4(&ui__lock);
}