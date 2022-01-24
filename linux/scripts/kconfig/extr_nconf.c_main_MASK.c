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

/* Variables and functions */
 int ESCDELAY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t MAIN_MENU_BACK ; 
 size_t MAIN_MENU_FORE ; 
 size_t MAIN_MENU_GREY ; 
 int /*<<< orphan*/  O_IGNORECASE ; 
 int /*<<< orphan*/  O_NONCYCLIC ; 
 int /*<<< orphan*/  O_ONEVALUE ; 
 int /*<<< orphan*/  O_SHOWDESC ; 
 int /*<<< orphan*/  O_SHOWMATCH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * attributes ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * conf_message_callback ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curses_menu ; 
 int /*<<< orphan*/  curses_menu_items ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  global_exit ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_window ; 
 int /*<<< orphan*/  menu_no_f_instructions ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int single_menu_mode ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC34 (char*,char*) ; 
 scalar_t__ FUNC35 (char*,char*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 

int FUNC37(int ac, char **av)
{
	int lines, columns;
	char *mode;

	if (ac > 1 && FUNC35(av[1], "-s") == 0) {
		/* Silence conf_read() until the real callback is set up */
		FUNC7(NULL);
		av++;
	}
	FUNC5(av[1]);
	FUNC6(NULL);

	mode = FUNC13("NCONFIG_MODE");
	if (mode) {
		if (!FUNC34(mode, "single_menu"))
			single_menu_mode = 1;
	}

	/* Initialize curses */
	FUNC16();
	/* set color theme */
	FUNC25();

	FUNC1();
	FUNC21();
	FUNC17(stdscr, TRUE);
	FUNC8(0);

	FUNC14(stdscr, lines, columns);
	if (columns < 75 || lines < 20) {
		FUNC11();
		FUNC23("Your terminal should have at "
			"least 20 lines and 75 columns\n");
		return 1;
	}

	FUNC22(stdscr, FALSE);
#if NCURSES_REENTRANT
	set_escdelay(1);
#else
	ESCDELAY = 1;
#endif

	/* set btns menu */
	curses_menu = FUNC20(curses_menu_items);
	FUNC18(curses_menu, O_SHOWDESC);
	FUNC19(curses_menu, O_SHOWMATCH);
	FUNC19(curses_menu, O_ONEVALUE);
	FUNC19(curses_menu, O_NONCYCLIC);
	FUNC19(curses_menu, O_IGNORECASE);
	FUNC31(curses_menu, " ");
	FUNC29(curses_menu, attributes[MAIN_MENU_FORE]);
	FUNC28(curses_menu, attributes[MAIN_MENU_BACK]);
	FUNC30(curses_menu, attributes[MAIN_MENU_GREY]);

	FUNC26(FUNC4());
	FUNC32();

	/* check for KEY_FUNC(1) */
	if (FUNC15(FUNC0(1)) == FALSE) {
		FUNC33(main_window,
				"Instructions",
				menu_no_f_instructions);
	}

	FUNC7(conf_message_callback);
	/* do the work */
	while (!global_exit) {
		FUNC3(&rootmenu);
		if (!global_exit && FUNC10() == 0)
			break;
	}
	/* ok, we are done */
	FUNC36(curses_menu);
	FUNC12(curses_menu);
	FUNC9(main_window);
	FUNC2();
	FUNC24();
	FUNC11();
	return 0;
}