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
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,char const*) ; 
 char const* FUNC5 (char*) ; 

__attribute__((used)) static const char *FUNC6(char *description, size_t size,
					   const char *path, const char *name)
{
	FILE *fp;
	char filename[PATH_MAX];

	FUNC4(filename, sizeof(filename), path, name);
	fp = FUNC3(filename, "r");
	if (!fp)
		return NULL;

	/* Skip shebang */
	while (FUNC1(fp) != '\n');

	description = FUNC2(description, size, fp);
	FUNC0(fp);

	return description ? FUNC5(description + 1) : NULL;
}