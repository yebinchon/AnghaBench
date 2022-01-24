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
struct ddebug_query {char const* module; char const* function; char const* filename; char const* format; int /*<<< orphan*/  first_lineno; int /*<<< orphan*/  last_lineno; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int UNESCAPE_OCTAL ; 
 int UNESCAPE_SPACE ; 
 int UNESCAPE_SPECIAL ; 
 int FUNC0 (char const**,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ddebug_query*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ddebug_query*,char*) ; 

__attribute__((used)) static int FUNC8(char *words[], int nwords,
			struct ddebug_query *query, const char *modname)
{
	unsigned int i;
	int rc = 0;

	/* check we have an even number of words */
	if (nwords % 2 != 0) {
		FUNC3("expecting pairs of match-spec <value>\n");
		return -EINVAL;
	}
	FUNC1(query, 0, sizeof(*query));

	if (modname)
		/* support $modname.dyndbg=<multiple queries> */
		query->module = modname;

	for (i = 0; i < nwords; i += 2) {
		if (!FUNC5(words[i], "func")) {
			rc = FUNC0(&query->function, words[i+1], "func");
		} else if (!FUNC5(words[i], "file")) {
			rc = FUNC0(&query->filename, words[i+1], "file");
		} else if (!FUNC5(words[i], "module")) {
			rc = FUNC0(&query->module, words[i+1], "module");
		} else if (!FUNC5(words[i], "format")) {
			FUNC6(words[i+1], UNESCAPE_SPACE |
							    UNESCAPE_OCTAL |
							    UNESCAPE_SPECIAL);
			rc = FUNC0(&query->format, words[i+1], "format");
		} else if (!FUNC5(words[i], "line")) {
			char *first = words[i+1];
			char *last = FUNC4(first, '-');
			if (query->first_lineno || query->last_lineno) {
				FUNC3("match-spec: line used 2x\n");
				return -EINVAL;
			}
			if (last)
				*last++ = '\0';
			if (FUNC2(first, &query->first_lineno) < 0)
				return -EINVAL;
			if (last) {
				/* range <first>-<last> */
				if (FUNC2(last, &query->last_lineno) < 0)
					return -EINVAL;

				/* special case for last lineno not specified */
				if (query->last_lineno == 0)
					query->last_lineno = UINT_MAX;

				if (query->last_lineno < query->first_lineno) {
					FUNC3("last-line:%d < 1st-line:%d\n",
						query->last_lineno,
						query->first_lineno);
					return -EINVAL;
				}
			} else {
				query->last_lineno = query->first_lineno;
			}
		} else {
			FUNC3("unknown keyword \"%s\"\n", words[i]);
			return -EINVAL;
		}
		if (rc)
			return rc;
	}
	FUNC7(query, "parsed");
	return 0;
}