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
struct menu {int dummy; } ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkTreeIter ;

/* Variables and functions */
 int /*<<< orphan*/  found ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct menu**,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  model2 ; 

__attribute__((used)) static GtkTreeIter *FUNC4(GtkTreeIter *parent,
					   struct menu *tofind)
{
	GtkTreeIter iter;
	GtkTreeIter *child = &iter;
	gboolean valid;
	GtkTreeIter *ret;

	valid = FUNC1(model2, child, parent);
	while (valid) {
		struct menu *menu;

		FUNC0(model2, child, 6, &menu, -1);

		if (menu == tofind) {
			FUNC3(&found, child, sizeof(GtkTreeIter));
			return &found;
		}

		ret = FUNC4(child, tofind);
		if (ret)
			return ret;

		valid = FUNC2(model2, child);
	}

	return NULL;
}