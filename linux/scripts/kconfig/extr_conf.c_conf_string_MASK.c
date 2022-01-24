#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {char const* name; } ;
struct menu {TYPE_1__* prompt; struct symbol* sym; } ;
struct TYPE_2__ {int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*,char const*) ; 
 char* indent ; 
 int* line ; 
 int /*<<< orphan*/  FUNC1 (struct menu*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 char* FUNC4 (struct symbol*) ; 
 scalar_t__ FUNC5 (struct symbol*,char const*) ; 

__attribute__((used)) static int FUNC6(struct menu *menu)
{
	struct symbol *sym = menu->sym;
	const char *def;

	while (1) {
		FUNC2("%*s%s ", indent - 1, "", menu->prompt->text);
		FUNC2("(%s) ", sym->name);
		def = FUNC4(sym);
		if (FUNC4(sym))
			FUNC2("[%s] ", def);
		if (!FUNC0(sym, def))
			return 0;
		switch (line[0]) {
		case '\n':
			break;
		case '?':
			/* print help */
			if (line[1] == '\n') {
				FUNC1(menu);
				def = NULL;
				break;
			}
			/* fall through */
		default:
			line[FUNC3(line)-1] = 0;
			def = line;
		}
		if (def && FUNC5(sym, def))
			return 0;
	}
}