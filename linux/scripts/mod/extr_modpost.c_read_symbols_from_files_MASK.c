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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(const char *filename)
{
	FILE *in = stdin;
	char fname[PATH_MAX];

	if (FUNC5(filename, "-") != 0) {
		in = FUNC3(filename, "r");
		if (!in)
			FUNC0("Can't open filenames file %s: %m", filename);
	}

	while (FUNC2(fname, PATH_MAX, in) != NULL) {
		if (FUNC6(fname, "\n"))
			fname[FUNC7(fname)-1] = '\0';
		FUNC4(fname);
	}

	if (in != stdin)
		FUNC1(in);
}