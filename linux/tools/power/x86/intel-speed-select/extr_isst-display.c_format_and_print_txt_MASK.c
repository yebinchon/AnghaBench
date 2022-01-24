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
typedef  int /*<<< orphan*/  delimiters ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 
 scalar_t__ FUNC1 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(FILE *outf, int level, char *header,
				 char *value)
{
	char *spaces = "  ";
	static char delimiters[256];
	int i, j = 0;

	if (!level)
		return;

	if (level == 1) {
		FUNC2(delimiters, " ");
	} else {
		for (i = 0; i < level - 1; ++i)
			j += FUNC1(&delimiters[j], sizeof(delimiters) - j,
				      "%s", spaces);
	}

	if (header && value) {
		FUNC0(outf, "%s", delimiters);
		FUNC0(outf, "%s:%s\n", header, value);
	} else if (header) {
		FUNC0(outf, "%s", delimiters);
		FUNC0(outf, "%s\n", header);
	}
}