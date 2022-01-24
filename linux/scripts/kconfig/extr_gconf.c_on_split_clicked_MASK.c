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
typedef  int /*<<< orphan*/  gpointer ;
typedef  int gint ;
typedef  int /*<<< orphan*/  GtkButton ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPLIT_VIEW ; 
 int /*<<< orphan*/  back_btn ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  hpaned ; 
 int /*<<< orphan*/  main_wnd ; 
 int /*<<< orphan*/  tree1_w ; 
 scalar_t__ tree2 ; 
 int /*<<< orphan*/  view_mode ; 

void FUNC8(GtkButton * button, gpointer user_data)
{
	gint w, h;
	view_mode = SPLIT_VIEW;
	FUNC6(tree1_w);
	FUNC7(FUNC1(main_wnd), &w, &h);
	FUNC3(FUNC0(hpaned), w / 2);
	if (tree2)
		FUNC4(tree2);
	FUNC2();

	/* Disable back btn, like in full mode. */
	FUNC5(back_btn, FALSE);
}