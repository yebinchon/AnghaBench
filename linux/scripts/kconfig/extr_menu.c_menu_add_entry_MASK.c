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
struct symbol {int dummy; } ;
struct menu {struct menu* next; int /*<<< orphan*/  lineno; int /*<<< orphan*/  file; int /*<<< orphan*/  parent; struct symbol* sym; } ;

/* Variables and functions */
 int /*<<< orphan*/  P_SYMBOL ; 
 struct menu* current_entry ; 
 int /*<<< orphan*/  current_file ; 
 int /*<<< orphan*/  current_menu ; 
 struct menu** last_entry_ptr ; 
 int /*<<< orphan*/  FUNC0 (struct menu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct symbol*,int /*<<< orphan*/ *) ; 
 struct menu* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct symbol *sym)
{
	struct menu *menu;

	menu = FUNC2(sizeof(*menu));
	FUNC0(menu, 0, sizeof(*menu));
	menu->sym = sym;
	menu->parent = current_menu;
	menu->file = current_file;
	menu->lineno = FUNC3();

	*last_entry_ptr = menu;
	last_entry_ptr = &menu->next;
	current_entry = menu;
	if (sym)
		FUNC1(P_SYMBOL, sym, NULL);
}