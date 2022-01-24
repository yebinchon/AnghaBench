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
struct symbol {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct property {int type; } ;
struct menu {int flags; struct symbol* sym; struct property* prompt; struct menu* next; struct menu* list; } ;
typedef  enum prop_type { ____Placeholder_prop_type } prop_type ;

/* Variables and functions */
 scalar_t__ FULL_VIEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MENU_ROOT ; 
 scalar_t__ OPT_ALL ; 
 scalar_t__ OPT_NORMAL ; 
 scalar_t__ OPT_PROMPT ; 
 int P_MENU ; 
 int P_UNKNOWN ; 
 scalar_t__ SINGLE_VIEW ; 
 scalar_t__ SPLIT_VIEW ; 
 int /*<<< orphan*/  SYMBOL_CHANGED ; 
 struct menu* current ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct menu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpaned ; 
 int indent ; 
 scalar_t__ FUNC4 (struct menu*) ; 
 scalar_t__ FUNC5 (struct menu*) ; 
 scalar_t__ FUNC6 (struct menu*) ; 
 scalar_t__ opt_mode ; 
 int /*<<< orphan*/  FUNC7 (struct menu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 char* FUNC9 (int) ; 
 struct menu rootmenu ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ tree ; 
 scalar_t__ tree1 ; 
 scalar_t__ tree2 ; 
 scalar_t__ view_mode ; 

__attribute__((used)) static void FUNC11(struct menu *menu)
{
	struct symbol *sym;
	struct property *prop;
	struct menu *child;
	enum prop_type ptype;

	if (menu == &rootmenu) {
		indent = 1;
		current = &rootmenu;
	}

	for (child = menu->list; child; child = child->next) {
		prop = child->prompt;
		sym = child->sym;
		ptype = prop ? prop->type : P_UNKNOWN;

		if (sym)
			sym->flags &= ~SYMBOL_CHANGED;

		if ((view_mode == SPLIT_VIEW)
		    && !(child->flags & MENU_ROOT) && (tree == tree1))
			continue;

		if ((view_mode == SPLIT_VIEW) && (child->flags & MENU_ROOT)
		    && (tree == tree2))
			continue;

		if ((opt_mode == OPT_NORMAL && FUNC6(child)) ||
		    (opt_mode == OPT_PROMPT && FUNC5(child)) ||
		    (opt_mode == OPT_ALL    && FUNC4(child)))
			FUNC7(child, FUNC2(child));
#ifdef DEBUG
		printf("%*c%s: ", indent, ' ', menu_get_prompt(child));
		printf("%s", child->flags & MENU_ROOT ? "rootmenu | " : "");
		printf("%s", prop_get_type_name(ptype));
		printf(" | ");
		if (sym) {
			printf("%s", sym_type_name(sym->type));
			printf(" | ");
			printf("%s", dbg_sym_flags(sym->flags));
			printf("\n");
		} else
			printf("\n");
#endif
		if ((view_mode != FULL_VIEW) && (ptype == P_MENU)
		    && (tree == tree2))
			continue;
/*
		if (((menu != &rootmenu) && !(menu->flags & MENU_ROOT))
		    || (view_mode == FULL_VIEW)
		    || (view_mode == SPLIT_VIEW))*/

		/* Change paned position if the view is not in 'split mode' */
		if (view_mode == SINGLE_VIEW || view_mode == FULL_VIEW) {
			FUNC3(FUNC0(hpaned), 0);
		}

		if (((view_mode == SINGLE_VIEW) && (menu->flags & MENU_ROOT))
		    || (view_mode == FULL_VIEW)
		    || (view_mode == SPLIT_VIEW)) {
			indent++;
			FUNC11(child);
			indent--;
		}
	}
}