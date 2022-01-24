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
struct symbol {scalar_t__ name; } ;
struct menu {struct symbol* sym; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ ; 
 int /*<<< orphan*/  FUNC0 (struct gstr*,struct symbol*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct menu*) ; 
 scalar_t__ FUNC2 (struct menu*) ; 
 char* nohelp_text ; 
 int /*<<< orphan*/  FUNC3 (struct gstr*,char*,char const*,...) ; 

void FUNC4(struct menu *menu, struct gstr *help)
{
	struct symbol *sym = menu->sym;
	const char *help_text = nohelp_text;

	if (FUNC2(menu)) {
		if (sym->name)
			FUNC3(help, "%s%s:\n\n", CONFIG_, sym->name);
		help_text = FUNC1(menu);
	}
	FUNC3(help, "%s\n", help_text);
	if (sym)
		FUNC0(help, sym, NULL);
}