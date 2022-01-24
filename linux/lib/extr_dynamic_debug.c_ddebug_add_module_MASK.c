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
struct ddebug_table {char const* mod_name; unsigned int num_ddebugs; int /*<<< orphan*/  link; struct _ddebug* ddebugs; } ;
struct _ddebug {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ddebug_lock ; 
 int /*<<< orphan*/  ddebug_tables ; 
 struct ddebug_table* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,char const*) ; 

int FUNC6(struct _ddebug *tab, unsigned int n,
			     const char *name)
{
	struct ddebug_table *dt;

	dt = FUNC0(sizeof(*dt), GFP_KERNEL);
	if (dt == NULL) {
		FUNC4("error adding module: %s\n", name);
		return -ENOMEM;
	}
	/*
	 * For built-in modules, name lives in .rodata and is
	 * immortal. For loaded modules, name points at the name[]
	 * member of struct module, which lives at least as long as
	 * this struct ddebug_table.
	 */
	dt->mod_name = name;
	dt->num_ddebugs = n;
	dt->ddebugs = tab;

	FUNC2(&ddebug_lock);
	FUNC1(&dt->link, &ddebug_tables);
	FUNC3(&ddebug_lock);

	FUNC5("%u debug prints in module %s\n", n, dt->mod_name);
	return 0;
}