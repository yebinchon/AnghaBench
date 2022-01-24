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
 int KDB_GREP_STRLEN ; 
 scalar_t__ FUNC0 (char) ; 
 int kdb_grep_leading ; 
 int /*<<< orphan*/  kdb_grep_string ; 
 int kdb_grep_trailing ; 
 int /*<<< orphan*/  kdb_grepping_flag ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(const char *str)
{
	int	len;
	char	*cp = (char *)str, *cp2;

	/* sanity check: we should have been called with the \ first */
	if (*cp != '|')
		return;
	cp++;
	while (FUNC0(*cp))
		cp++;
	if (!FUNC2(cp, "grep ")) {
		FUNC1("invalid 'pipe', see grephelp\n");
		return;
	}
	cp += 5;
	while (FUNC0(*cp))
		cp++;
	cp2 = FUNC3(cp, '\n');
	if (cp2)
		*cp2 = '\0'; /* remove the trailing newline */
	len = FUNC5(cp);
	if (len == 0) {
		FUNC1("invalid 'pipe', see grephelp\n");
		return;
	}
	/* now cp points to a nonzero length search string */
	if (*cp == '"') {
		/* allow it be "x y z" by removing the "'s - there must
		   be two of them */
		cp++;
		cp2 = FUNC3(cp, '"');
		if (!cp2) {
			FUNC1("invalid quoted string, see grephelp\n");
			return;
		}
		*cp2 = '\0'; /* end the string where the 2nd " was */
	}
	kdb_grep_leading = 0;
	if (*cp == '^') {
		kdb_grep_leading = 1;
		cp++;
	}
	len = FUNC5(cp);
	kdb_grep_trailing = 0;
	if (*(cp+len-1) == '$') {
		kdb_grep_trailing = 1;
		*(cp+len-1) = '\0';
	}
	len = FUNC5(cp);
	if (!len)
		return;
	if (len >= KDB_GREP_STRLEN) {
		FUNC1("search string too long\n");
		return;
	}
	FUNC4(kdb_grep_string, cp);
	kdb_grepping_flag++;
	return;
}