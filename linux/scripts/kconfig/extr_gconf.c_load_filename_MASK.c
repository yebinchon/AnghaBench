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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkFileSelection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(GtkFileSelection * file_selector, gpointer user_data)
{
	const gchar *fn;

	fn = FUNC3(FUNC0
					     (user_data));

	if (FUNC1(fn))
		FUNC4("Error", "Unable to load configuration !");
	else
		FUNC2(&rootmenu);
}