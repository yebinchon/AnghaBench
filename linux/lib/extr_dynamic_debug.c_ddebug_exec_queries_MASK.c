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
 int FUNC0 (char*,char const*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static int FUNC4(char *query, const char *modname)
{
	char *split;
	int i, errs = 0, exitcode = 0, rc, nfound = 0;

	for (i = 0; query; query = split) {
		split = FUNC2(query, ";\n");
		if (split)
			*split++ = '\0';

		query = FUNC1(query);
		if (!query || !*query || *query == '#')
			continue;

		FUNC3("query %d: \"%s\"\n", i, query);

		rc = FUNC0(query, modname);
		if (rc < 0) {
			errs++;
			exitcode = rc;
		} else {
			nfound += rc;
		}
		i++;
	}
	FUNC3("processed %d queries, with %d matches, %d errs\n",
		 i, nfound, errs);

	if (exitcode)
		return exitcode;
	return nfound;
}