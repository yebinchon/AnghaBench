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
struct symbol {char* name; scalar_t__ type; } ;
struct menu {struct menu* next; struct menu* list; struct symbol* sym; } ;

/* Variables and functions */
 char* CONFIG_ ; 
 scalar_t__ S_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conf_cnt ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ input_mode ; 
 scalar_t__ listnewconfig ; 
 int /*<<< orphan*/  FUNC2 (struct menu*) ; 
 int /*<<< orphan*/  FUNC3 (struct menu*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  rootEntry ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (struct symbol*) ; 
 scalar_t__ FUNC7 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC8 (struct symbol*) ; 
 scalar_t__ FUNC9 (struct symbol*) ; 
 scalar_t__ FUNC10 (struct symbol*) ; 
 scalar_t__ yes ; 

__attribute__((used)) static void FUNC11(struct menu *menu)
{
	struct symbol *sym;
	struct menu *child;

	if (!FUNC3(menu))
		return;

	sym = menu->sym;
	if (sym && !FUNC8(sym)) {
		if (FUNC9(sym) ||
		    (FUNC10(sym) && FUNC7(sym) == yes)) {
			if (input_mode == listnewconfig) {
				if (sym->name) {
					const char *str;

					if (sym->type == S_STRING) {
						str = FUNC6(sym);
						str = FUNC5(str);
						FUNC4("%s%s=%s\n", CONFIG_, sym->name, str);
						FUNC1((void *)str);
					} else {
						str = FUNC6(sym);
						FUNC4("%s%s=%s\n", CONFIG_, sym->name, str);
					}
				}
			} else {
				if (!conf_cnt++)
					FUNC4("*\n* Restart config...\n*\n");
				rootEntry = FUNC2(menu);
				FUNC0(rootEntry);
			}
		}
	}

	for (child = menu->list; child; child = child->next)
		FUNC11(child);
}