#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct menu {int dummy; } ;
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTreeViewColumn ;
typedef  int /*<<< orphan*/  GtkTreeView ;
typedef  int /*<<< orphan*/  GtkTreePath ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  TYPE_1__ GdkEventButton ;

/* Variables and functions */
 int /*<<< orphan*/  COL_MENU ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GDK_2BUTTON_PRESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 struct menu* browsed ; 
 struct menu* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct menu**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  model1 ; 
 int /*<<< orphan*/  FUNC8 (struct menu*) ; 
 int /*<<< orphan*/  tree2_w ; 

gboolean
FUNC9(GtkWidget * widget,
				GdkEventButton * event, gpointer user_data)
{
	GtkTreeView *view = FUNC0(widget);
	GtkTreePath *path;
	GtkTreeViewColumn *column;
	GtkTreeIter iter;
	struct menu *menu;

	gint tx = (gint) event->x;
	gint ty = (gint) event->y;
	gint cx, cy;

	FUNC4(view, tx, ty, &path, &column, &cx,
				      &cy);
	if (path == NULL)
		return FALSE;

	FUNC3(model1, &iter, path);
	FUNC2(model1, &iter, COL_MENU, &menu, -1);

	if (event->type == GDK_2BUTTON_PRESS) {
		FUNC8(menu);
		current = menu;
		FUNC1();
	} else {
		browsed = menu;
		FUNC1();
	}

	FUNC7(tree2_w);
	FUNC5(view, path, NULL, FALSE);
	FUNC6(tree2_w);

	return FALSE;
}