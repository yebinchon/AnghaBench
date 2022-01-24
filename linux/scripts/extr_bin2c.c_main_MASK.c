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
 int EOF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

int FUNC2(int argc, char *argv[])
{
	int ch, total = 0;

	if (argc > 1)
		FUNC1("const char %s[] %s=\n",
			argv[1], argc > 2 ? argv[2] : "");

	do {
		FUNC1("\t\"");
		while ((ch = FUNC0()) != EOF) {
			total++;
			FUNC1("\\x%02x", ch);
			if (total % 16 == 0)
				break;
		}
		FUNC1("\"\n");
	} while (ch != EOF);

	if (argc > 1)
		FUNC1("\t;\n\n#include <linux/types.h>\n\nconst size_t %s_size = %d;\n",
		       argv[1], total);

	return 0;
}