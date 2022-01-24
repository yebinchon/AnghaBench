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
typedef  int tristate ;
struct symbol {char* name; } ;
struct menu {TYPE_1__* prompt; struct symbol* sym; } ;
struct TYPE_2__ {int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*,int /*<<< orphan*/ ) ; 
 char* indent ; 
 int* line ; 
#define  mod 130 
#define  no 129 
 int /*<<< orphan*/  FUNC1 (struct menu*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*) ; 
 int FUNC7 (struct symbol*) ; 
 scalar_t__ FUNC8 (struct symbol*,int) ; 
 scalar_t__ FUNC9 (struct symbol*,int const) ; 
#define  yes 128 

__attribute__((used)) static int FUNC10(struct menu *menu)
{
	struct symbol *sym = menu->sym;
	tristate oldval, newval;

	while (1) {
		FUNC2("%*s%s ", indent - 1, "", menu->prompt->text);
		if (sym->name)
			FUNC2("(%s) ", sym->name);
		FUNC3('[');
		oldval = FUNC7(sym);
		switch (oldval) {
		case no:
			FUNC3('N');
			break;
		case mod:
			FUNC3('M');
			break;
		case yes:
			FUNC3('Y');
			break;
		}
		if (oldval != no && FUNC9(sym, no))
			FUNC2("/n");
		if (oldval != mod && FUNC9(sym, mod))
			FUNC2("/m");
		if (oldval != yes && FUNC9(sym, yes))
			FUNC2("/y");
		FUNC2("/?] ");
		if (!FUNC0(sym, FUNC6(sym)))
			return 0;
		FUNC5(line);

		switch (line[0]) {
		case 'n':
		case 'N':
			newval = no;
			if (!line[1] || !FUNC4(&line[1], "o"))
				break;
			continue;
		case 'm':
		case 'M':
			newval = mod;
			if (!line[1])
				break;
			continue;
		case 'y':
		case 'Y':
			newval = yes;
			if (!line[1] || !FUNC4(&line[1], "es"))
				break;
			continue;
		case 0:
			newval = oldval;
			break;
		case '?':
			goto help;
		default:
			continue;
		}
		if (FUNC8(sym, newval))
			return 0;
help:
		FUNC1(menu);
	}
}