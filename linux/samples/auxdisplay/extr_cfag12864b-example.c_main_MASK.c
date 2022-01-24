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
 unsigned char EXAMPLES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char) ; 
 char FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int FUNC6(int argc, char *argv[])
{
	unsigned char n;

	if (argc != 2) {
		FUNC5(
			"Syntax:  %s fbdev\n"
			"Usually: /dev/fb0, /dev/fb1...\n", argv[0]);
		return -1;
	}

	if (FUNC2(argv[1])) {
		FUNC5("Can't init %s fbdev\n", argv[1]);
		return -2;
	}

	for (n = 1; n <= EXAMPLES; n++) {
		FUNC3(n);
		FUNC0();
		while (FUNC4() != '\n');
	}

	FUNC1();

	return 0;
}