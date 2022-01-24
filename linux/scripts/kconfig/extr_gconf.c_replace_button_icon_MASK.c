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
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_3__ {int /*<<< orphan*/ * bg; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkToolButton ;
typedef  TYPE_1__ GtkStyle ;
typedef  int /*<<< orphan*/  GladeXML ;
typedef  int /*<<< orphan*/  GdkPixmap ;
typedef  int /*<<< orphan*/  GdkDrawable ;
typedef  int /*<<< orphan*/  GdkBitmap ;

/* Variables and functions */
 size_t GTK_STATE_NORMAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(GladeXML *xml, GdkDrawable *window,
				GtkStyle *style, gchar *btn_name, gchar **xpm)
{
	GdkPixmap *pixmap;
	GdkBitmap *mask;
	GtkToolButton *button;
	GtkWidget *image;

	pixmap = FUNC1(window, &mask,
					      &style->bg[GTK_STATE_NORMAL],
					      xpm);

	button = FUNC0(FUNC2(xml, btn_name));
	image = FUNC3(pixmap, mask);
	FUNC5(image);
	FUNC4(button, image);
}