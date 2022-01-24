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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 char* FUNC6 (char*,char) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 

char *FUNC9(int fd, const char *key)
{
	char path[PATH_MAX];
	char *line = NULL;
	size_t line_n = 0;
	ssize_t n;
	FILE *fdi;

	FUNC5(path, sizeof(path), "/proc/self/fdinfo/%d", fd);

	fdi = FUNC1(path, "r");
	if (!fdi)
		return NULL;

	while ((n = FUNC3(&line, &line_n, fdi)) > 0) {
		char *value;
		int len;

		if (!FUNC8(line, key))
			continue;

		FUNC0(fdi);

		value = FUNC6(line, '\t');
		if (!value || !value[1]) {
			FUNC2(line);
			return NULL;
		}
		value++;

		len = FUNC7(value);
		FUNC4(line, value, len);
		line[len - 1] = '\0';

		return line;
	}

	FUNC2(line);
	FUNC0(fdi);
	return NULL;
}