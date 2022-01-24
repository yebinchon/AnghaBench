#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct symbol {int dummy; } ;
struct subtitle_part {int /*<<< orphan*/  entries; int /*<<< orphan*/ * text; } ;
struct menu {TYPE_1__* prompt; void* data; struct symbol* sym; } ;
struct TYPE_5__ {int /*<<< orphan*/  prev; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ERRDISPLAYTOOSMALL ; 
 int KEY_ESC ; 
 int /*<<< orphan*/  P_MENU ; 
 int /*<<< orphan*/  FUNC0 (struct menu*) ; 
 int /*<<< orphan*/  child_count ; 
 int /*<<< orphan*/  FUNC1 (struct menu*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct menu*) ; 
 struct menu* current_menu ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,struct menu*,int*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 struct menu* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mconf_readme ; 
 void* FUNC15 (struct menu*) ; 
 int /*<<< orphan*/  menu_instructions ; 
 int /*<<< orphan*/  mod ; 
 int /*<<< orphan*/  no ; 
 int /*<<< orphan*/  FUNC16 () ; 
 struct menu rootmenu ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  setmod_text ; 
 int show_all_options ; 
 int /*<<< orphan*/  FUNC19 (struct menu*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  single_menu_mode ; 
 int /*<<< orphan*/  FUNC22 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC23 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC24 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct symbol*) ; 
 TYPE_2__ trail ; 
 int /*<<< orphan*/  yes ; 

__attribute__((used)) static void FUNC26(struct menu *menu, struct menu *active_menu)
{
	struct menu *submenu;
	const char *prompt = FUNC15(menu);
	struct subtitle_part stpart;
	struct symbol *sym;
	int res;
	int s_scroll = 0;

	if (menu != &rootmenu)
		stpart.text = FUNC15(menu);
	else
		stpart.text = NULL;
	FUNC13(&stpart.entries, &trail);

	while (1) {
		FUNC11();
		current_menu = menu;
		FUNC0(menu);
		if (!child_count)
			break;
		FUNC18();
		FUNC5();
		res = FUNC6(prompt ? prompt : "Main Menu",
				  menu_instructions,
				  active_menu, &s_scroll);
		if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
			break;
		if (FUNC8() != 0) {
			if (!FUNC7())
				continue;
			if (!FUNC12())
				continue;
		}
		submenu = FUNC9();
		active_menu = FUNC9();
		if (submenu)
			sym = submenu->sym;
		else
			sym = NULL;

		switch (res) {
		case 0:
			switch (FUNC12()) {
			case 'm':
				if (single_menu_mode)
					submenu->data = (void *) (long) !submenu->data;
				else
					FUNC26(submenu, NULL);
				break;
			case 't':
				if (FUNC23(sym) && FUNC22(sym) == yes)
					FUNC1(submenu);
				else if (submenu->prompt->type == P_MENU)
					FUNC26(submenu, NULL);
				break;
			case 's':
				FUNC4(submenu);
				break;
			}
			break;
		case 2:
			if (sym)
				FUNC19(submenu);
			else {
				FUNC16();
				FUNC20("README", mconf_readme);
			}
			break;
		case 3:
			FUNC16();
			FUNC3();
			break;
		case 4:
			FUNC16();
			FUNC2();
			break;
		case 5:
			if (FUNC10('t')) {
				if (FUNC24(sym, yes))
					break;
				if (FUNC24(sym, mod))
					FUNC21(NULL, setmod_text, 6, 74);
			}
			break;
		case 6:
			if (FUNC10('t'))
				FUNC24(sym, no);
			break;
		case 7:
			if (FUNC10('t'))
				FUNC24(sym, mod);
			break;
		case 8:
			if (FUNC10('t'))
				FUNC25(sym);
			else if (FUNC10('m'))
				FUNC26(submenu, NULL);
			break;
		case 9:
			FUNC17();
			break;
		case 10:
			show_all_options = !show_all_options;
			break;
		}
	}

	FUNC14(trail.prev);
}