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
typedef  char gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkMenuItem ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_BUTTONS_CLOSE ; 
 int /*<<< orphan*/  GTK_DIALOG_DESTROY_WITH_PARENT ; 
 int /*<<< orphan*/  GTK_MESSAGE_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  gtk_widget_destroy ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_wnd ; 

void FUNC6(GtkMenuItem * menuitem, gpointer user_data)
{
	GtkWidget *dialog;
	const gchar *license_text =
	    "gkc is released under the terms of the GNU GPL v2.\n"
	      "For more information, please see the source code or\n"
	      "visit http://www.fsf.org/licenses/licenses.html\n";

	dialog = FUNC4(FUNC1(main_wnd),
					GTK_DIALOG_DESTROY_WITH_PARENT,
					GTK_MESSAGE_INFO,
					GTK_BUTTONS_CLOSE, "%s", license_text);
	FUNC3(FUNC0(dialog), "response",
				 FUNC2(gtk_widget_destroy),
				 FUNC0(dialog));
	FUNC5(dialog);
}