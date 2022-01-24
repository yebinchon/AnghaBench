#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
typedef  int gint ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_4__ {int /*<<< orphan*/  vbox; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkDialogFlags ;
typedef  int /*<<< orphan*/  GdkEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int GTK_DIALOG_DESTROY_WITH_PARENT ; 
 int GTK_DIALOG_MODAL ; 
#define  GTK_RESPONSE_CANCEL 131 
#define  GTK_RESPONSE_DELETE_EVENT 130 
#define  GTK_RESPONSE_NO 129 
#define  GTK_RESPONSE_YES 128 
 int /*<<< orphan*/  GTK_STOCK_CANCEL ; 
 int /*<<< orphan*/  GTK_STOCK_NO ; 
 int /*<<< orphan*/  GTK_STOCK_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_wnd ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

gboolean FUNC12(GtkWidget * widget, GdkEvent * event,
				 gpointer user_data)
{
	GtkWidget *dialog, *label;
	gint result;

	if (!FUNC3())
		return FALSE;

	dialog = FUNC5("Warning !",
					     FUNC2(main_wnd),
					     (GtkDialogFlags)
					     (GTK_DIALOG_MODAL |
					      GTK_DIALOG_DESTROY_WITH_PARENT),
					     GTK_STOCK_OK,
					     GTK_RESPONSE_YES,
					     GTK_STOCK_NO,
					     GTK_RESPONSE_NO,
					     GTK_STOCK_CANCEL,
					     GTK_RESPONSE_CANCEL, NULL);
	FUNC7(FUNC1(dialog),
					GTK_RESPONSE_CANCEL);

	label = FUNC8("\nSave configuration ?\n");
	FUNC4(FUNC0(FUNC1(dialog)->vbox), label);
	FUNC10(label);

	result = FUNC6(FUNC1(dialog));
	switch (result) {
	case GTK_RESPONSE_YES:
		FUNC11(NULL, NULL);
		return FALSE;
	case GTK_RESPONSE_NO:
		return FALSE;
	case GTK_RESPONSE_CANCEL:
	case GTK_RESPONSE_DELETE_EVENT:
	default:
		FUNC9(dialog);
		return TRUE;
	}

	return FALSE;
}