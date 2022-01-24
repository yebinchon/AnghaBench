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
struct script_desc {void* args; void* half_liner; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 char* FUNC3 (char*) ; 
 void* FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(struct script_desc *desc, const char *filename)
{
	char line[BUFSIZ], *p;
	FILE *fp;

	fp = FUNC2(filename, "r");
	if (!fp)
		return -1;

	while (FUNC1(line, sizeof(line), fp)) {
		p = FUNC3(line);
		if (FUNC5(p) == 0)
			continue;
		if (*p != '#')
			continue;
		p++;
		if (FUNC5(p) && *p == '!')
			continue;

		p = FUNC3(p);
		if (FUNC5(p) && p[FUNC5(p) - 1] == '\n')
			p[FUNC5(p) - 1] = '\0';

		if (!FUNC6(p, "description:", FUNC5("description:"))) {
			p += FUNC5("description:");
			desc->half_liner = FUNC4(FUNC3(p));
			continue;
		}

		if (!FUNC6(p, "args:", FUNC5("args:"))) {
			p += FUNC5("args:");
			desc->args = FUNC4(FUNC3(p));
			continue;
		}
	}

	FUNC0(fp);

	return 0;
}