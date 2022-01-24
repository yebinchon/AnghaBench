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
struct rb_root {int dummy; } ;
struct dso {int long_name_allocated; char const* long_name; int /*<<< orphan*/  long_name_len; struct rb_root* root; int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_root*,struct dso*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rb_root*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(struct dso *dso, const char *name, bool name_allocated)
{
	struct rb_root *root = dso->root;

	if (name == NULL)
		return;

	if (dso->long_name_allocated)
		FUNC2((char *)dso->long_name);

	if (root) {
		FUNC3(&dso->rb_node, root);
		/*
		 * __dsos__findnew_link_by_longname() isn't guaranteed to add it
		 * back, so a clean removal is required here.
		 */
		FUNC0(&dso->rb_node);
		dso->root = NULL;
	}

	dso->long_name		 = name;
	dso->long_name_len	 = FUNC4(name);
	dso->long_name_allocated = name_allocated;

	if (root)
		FUNC1(root, dso, NULL);
}