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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_3__ {int /*<<< orphan*/  main_window; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_BUTTONS_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_DIALOG_DESTROY_WITH_PARENT ; 
 int /*<<< orphan*/  GTK_MESSAGE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* pgctx ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (char**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const char *format, va_list args)
{
	char *msg;
	GtkWidget *dialog;

	if (!FUNC7(pgctx) ||
	    FUNC8(&msg, format, args) < 0) {
		FUNC2(stderr, "Error:\n");
		FUNC9(stderr, format, args);
		FUNC2(stderr, "\n");
		return -1;
	}

	dialog = FUNC5(FUNC1(pgctx->main_window),
					GTK_DIALOG_DESTROY_WITH_PARENT,
					GTK_MESSAGE_ERROR,
					GTK_BUTTONS_CLOSE,
					"<b>Error</b>\n\n%s", msg);
	FUNC4(FUNC0(dialog));

	FUNC6(dialog);
	FUNC3(msg);
	return 0;
}