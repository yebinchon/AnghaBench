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
 int MAXNAME ; 
 char FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(char *name, int baselen, int c)
{
	do {
		if (c == '\n')
			return -1;
		c = FUNC0();
	} while (FUNC1(c));

	/* We require the format to be '[base "extension"]' */
	if (c != '"')
		return -1;
	name[baselen++] = '.';

	for (;;) {
		int ch = FUNC0();

		if (ch == '\n')
			return -1;
		if (ch == '"')
			break;
		if (ch == '\\') {
			ch = FUNC0();
			if (ch == '\n')
				return -1;
		}
		name[baselen++] = ch;
		if (baselen > MAXNAME / 2)
			return -1;
	}

	/* Final ']' */
	if (FUNC0() != ']')
		return -1;
	return baselen;
}