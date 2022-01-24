#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum ftrace_readme { ____Placeholder_ftrace_readme } ftrace_readme ;
struct TYPE_2__ {int avail; int /*<<< orphan*/  pattern; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FTRACE_README_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* ftrace_readme_table ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(enum ftrace_readme type)
{
	int fd;
	FILE *fp;
	char *buf = NULL;
	size_t len = 0;
	bool ret = false;
	static bool scanned = false;

	if (scanned)
		goto result;

	fd = FUNC5("README", false);
	if (fd < 0)
		return ret;

	fp = FUNC2(fd, "r");
	if (!fp) {
		FUNC0(fd);
		return ret;
	}

	while (FUNC4(&buf, &len, fp) > 0)
		for (enum ftrace_readme i = 0; i < FTRACE_README_END; i++)
			if (!ftrace_readme_table[i].avail)
				ftrace_readme_table[i].avail =
					FUNC6(buf, ftrace_readme_table[i].pattern);
	scanned = true;

	FUNC1(fp);
	FUNC3(buf);

result:
	if (type >= FTRACE_README_END)
		return false;

	return ftrace_readme_table[type].avail;
}