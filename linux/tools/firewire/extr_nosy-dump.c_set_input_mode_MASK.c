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
struct termios {int c_lflag; int* c_cc; } ;

/* Variables and functions */
 int ECHO ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int ICANON ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reset_input_mode ; 
 struct termios saved_attributes ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct termios tattr;

	/* Make sure stdin is a terminal. */
	if (!FUNC3(STDIN_FILENO)) {
		FUNC2(stderr, "Not a terminal.\n");
		FUNC1(EXIT_FAILURE);
	}

	/* Save the terminal attributes so we can restore them later. */
	FUNC4(STDIN_FILENO, &saved_attributes);
	FUNC0(reset_input_mode);

	/* Set the funny terminal modes. */
	FUNC4(STDIN_FILENO, &tattr);
	tattr.c_lflag &= ~(ICANON|ECHO); /* Clear ICANON and ECHO. */
	tattr.c_cc[VMIN] = 1;
	tattr.c_cc[VTIME] = 0;
	FUNC5(STDIN_FILENO, TCSAFLUSH, &tattr);
}