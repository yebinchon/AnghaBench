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
struct module {int is_dot_o; char* name; int gpl_compatible; struct module* next; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct module*,int /*<<< orphan*/ ,int) ; 
 struct module* modules ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static struct module *FUNC6(const char *modname)
{
	struct module *mod;
	char *p;

	mod = FUNC0(FUNC1(sizeof(*mod)));
	FUNC2(mod, 0, sizeof(*mod));
	p = FUNC0(FUNC3(modname));

	/* strip trailing .o */
	if (FUNC4(p, ".o")) {
		p[FUNC5(p) - 2] = '\0';
		mod->is_dot_o = 1;
	}

	/* add to list */
	mod->name = p;
	mod->gpl_compatible = -1;
	mod->next = modules;
	modules = mod;

	return mod;
}