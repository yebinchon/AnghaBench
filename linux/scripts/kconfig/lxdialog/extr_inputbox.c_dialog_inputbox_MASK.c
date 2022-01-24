#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WINDOW ;
struct TYPE_7__ {int /*<<< orphan*/  atr; } ;
struct TYPE_6__ {int /*<<< orphan*/  atr; } ;
struct TYPE_5__ {int /*<<< orphan*/  atr; } ;
struct TYPE_8__ {TYPE_3__ inputbox; TYPE_2__ border; TYPE_1__ dialog; } ;

/* Variables and functions */
 char ACS_HLINE ; 
 int /*<<< orphan*/  ACS_LTEE ; 
 char ACS_RTEE ; 
 int ERRDISPLAYTOOSMALL ; 
 int INPUTBOX_HEIGTH_MIN ; 
 int INPUTBOX_WIDTH_MIN ; 
#define  KEY_BACKSPACE 135 
#define  KEY_DOWN 134 
#define  KEY_ESC 133 
#define  KEY_LEFT 132 
#define  KEY_RESIZE 131 
#define  KEY_RIGHT 130 
#define  KEY_UP 129 
 int MAX_LEN ; 
#define  TAB 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* dialog_input_result ; 
 TYPE_4__ dlg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int,int,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  stdscr ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 int FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

int FUNC24(const char *title, const char *prompt, int height, int width,
		    const char *init)
{
	int i, x, y, box_y, box_x, box_width;
	int input_x = 0, key = 0, button = -1;
	int show_x, len, pos;
	char *instr = dialog_input_result;
	WINDOW *dialog;

	if (!init)
		instr[0] = '\0';
	else
		FUNC16(instr, init);

do_resize:
	if (FUNC5(stdscr) <= (height - INPUTBOX_HEIGTH_MIN))
		return -ERRDISPLAYTOOSMALL;
	if (FUNC4(stdscr) <= (width - INPUTBOX_WIDTH_MIN))
		return -ERRDISPLAYTOOSMALL;

	/* center dialog box on screen */
	x = (FUNC4(stdscr) - width) / 2;
	y = (FUNC5(stdscr) - height) / 2;

	FUNC2(stdscr, y, x, height, width);

	dialog = FUNC10(height, width, y, x);
	FUNC8(dialog, TRUE);

	FUNC1(dialog, 0, 0, height, width,
		 dlg.dialog.atr, dlg.border.atr);
	FUNC20(dialog, dlg.border.atr);
	FUNC9(dialog, height - 3, 0, ACS_LTEE);
	for (i = 0; i < width - 2; i++)
		FUNC18(dialog, ACS_HLINE);
	FUNC20(dialog, dlg.dialog.atr);
	FUNC18(dialog, ACS_RTEE);

	FUNC15(dialog, title, width);

	FUNC20(dialog, dlg.dialog.atr);
	FUNC13(dialog, prompt, width - 2, 1, 3);

	/* Draw the input field box */
	box_width = width - 6;
	FUNC6(dialog, y, x);
	box_y = y + 2;
	box_x = (width - box_width) / 2;
	FUNC1(dialog, y + 1, box_x - 1, 3, box_width + 2,
		 dlg.dialog.atr, dlg.border.atr);

	FUNC14(dialog, height, width, 0);

	/* Set up the initial value */
	FUNC22(dialog, box_y, box_x);
	FUNC20(dialog, dlg.inputbox.atr);

	len = FUNC17(instr);
	pos = len;

	if (len >= box_width) {
		show_x = len - box_width + 1;
		input_x = box_width - 1;
		for (i = 0; i < box_width - 1; i++)
			FUNC18(dialog, instr[show_x + i]);
	} else {
		show_x = 0;
		input_x = len;
		FUNC19(dialog, instr);
	}

	FUNC22(dialog, box_y, box_x + input_x);

	FUNC23(dialog);

	while (key != KEY_ESC) {
		key = FUNC21(dialog);

		if (button == -1) {	/* Input box selected */
			switch (key) {
			case TAB:
			case KEY_UP:
			case KEY_DOWN:
				break;
			case KEY_BACKSPACE:
			case 8:   /* ^H */
			case 127: /* ^? */
				if (pos) {
					FUNC20(dialog, dlg.inputbox.atr);
					if (input_x == 0) {
						show_x--;
					} else
						input_x--;

					if (pos < len) {
						for (i = pos - 1; i < len; i++) {
							instr[i] = instr[i+1];
						}
					}

					pos--;
					len--;
					instr[len] = '\0';
					FUNC22(dialog, box_y, box_x);
					for (i = 0; i < box_width; i++) {
						if (!instr[show_x + i]) {
							FUNC18(dialog, ' ');
							break;
						}
						FUNC18(dialog, instr[show_x + i]);
					}
					FUNC22(dialog, box_y, input_x + box_x);
					FUNC23(dialog);
				}
				continue;
			case KEY_LEFT:
				if (pos > 0) {
					if (input_x > 0) {
						FUNC22(dialog, box_y, --input_x + box_x);
					} else if (input_x == 0) {
						show_x--;
						FUNC22(dialog, box_y, box_x);
						for (i = 0; i < box_width; i++) {
							if (!instr[show_x + i]) {
								FUNC18(dialog, ' ');
								break;
							}
							FUNC18(dialog, instr[show_x + i]);
						}
						FUNC22(dialog, box_y, box_x);
					}
					pos--;
				}
				continue;
			case KEY_RIGHT:
				if (pos < len) {
					if (input_x < box_width - 1) {
						FUNC22(dialog, box_y, ++input_x + box_x);
					} else if (input_x == box_width - 1) {
						show_x++;
						FUNC22(dialog, box_y, box_x);
						for (i = 0; i < box_width; i++) {
							if (!instr[show_x + i]) {
								FUNC18(dialog, ' ');
								break;
							}
							FUNC18(dialog, instr[show_x + i]);
						}
						FUNC22(dialog, box_y, input_x + box_x);
					}
					pos++;
				}
				continue;
			default:
				if (key < 0x100 && FUNC7(key)) {
					if (len < MAX_LEN) {
						FUNC20(dialog, dlg.inputbox.atr);
						if (pos < len) {
							for (i = len; i > pos; i--)
								instr[i] = instr[i-1];
							instr[pos] = key;
						} else {
							instr[len] = key;
						}
						pos++;
						len++;
						instr[len] = '\0';

						if (input_x == box_width - 1) {
							show_x++;
						} else {
							input_x++;
						}

						FUNC22(dialog, box_y, box_x);
						for (i = 0; i < box_width; i++) {
							if (!instr[show_x + i]) {
								FUNC18(dialog, ' ');
								break;
							}
							FUNC18(dialog, instr[show_x + i]);
						}
						FUNC22(dialog, box_y, input_x + box_x);
						FUNC23(dialog);
					} else
						FUNC3();	/* Alarm user about overflow */
					continue;
				}
			}
		}
		switch (key) {
		case 'O':
		case 'o':
			FUNC0(dialog);
			return 0;
		case 'H':
		case 'h':
			FUNC0(dialog);
			return 1;
		case KEY_UP:
		case KEY_LEFT:
			switch (button) {
			case -1:
				button = 1;	/* Indicates "Help" button is selected */
				FUNC14(dialog, height, width, 1);
				break;
			case 0:
				button = -1;	/* Indicates input box is selected */
				FUNC14(dialog, height, width, 0);
				FUNC22(dialog, box_y, box_x + input_x);
				FUNC23(dialog);
				break;
			case 1:
				button = 0;	/* Indicates "OK" button is selected */
				FUNC14(dialog, height, width, 0);
				break;
			}
			break;
		case TAB:
		case KEY_DOWN:
		case KEY_RIGHT:
			switch (button) {
			case -1:
				button = 0;	/* Indicates "OK" button is selected */
				FUNC14(dialog, height, width, 0);
				break;
			case 0:
				button = 1;	/* Indicates "Help" button is selected */
				FUNC14(dialog, height, width, 1);
				break;
			case 1:
				button = -1;	/* Indicates input box is selected */
				FUNC14(dialog, height, width, 0);
				FUNC22(dialog, box_y, box_x + input_x);
				FUNC23(dialog);
				break;
			}
			break;
		case ' ':
		case '\n':
			FUNC0(dialog);
			return (button == -1 ? 0 : button);
		case 'X':
		case 'x':
			key = KEY_ESC;
			break;
		case KEY_ESC:
			key = FUNC11(dialog);
			break;
		case KEY_RESIZE:
			FUNC0(dialog);
			FUNC12();
			goto do_resize;
		}
	}

	FUNC0(dialog);
	return KEY_ESC;		/* ESC pressed */
}