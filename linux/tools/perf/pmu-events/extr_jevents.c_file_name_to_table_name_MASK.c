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
 int FUNC0 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  prog ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (char*) ; 

__attribute__((used)) static char *FUNC8(char *fname)
{
	unsigned int i;
	int n;
	int c;
	char *tblname;

	/*
	 * Ensure tablename starts with alphabetic character.
	 * Derive rest of table name from basename of the JSON file,
	 * replacing hyphens and stripping out .json suffix.
	 */
	n = FUNC0(&tblname, "pme_%s", fname);
	if (n < 0) {
		FUNC5("%s: asprintf() error %s for file %s\n", prog,
				FUNC6(errno), fname);
		return NULL;
	}

	for (i = 0; i < FUNC7(tblname); i++) {
		c = tblname[i];

		if (c == '-' || c == '/')
			tblname[i] = '_';
		else if (c == '.') {
			tblname[i] = '\0';
			break;
		} else if (!FUNC3(c) && c != '_') {
			FUNC4("%s: Invalid character '%c' in file name %s\n",
					prog, c, FUNC1(fname));
			FUNC2(tblname);
			tblname = NULL;
			break;
		}
	}

	return tblname;
}