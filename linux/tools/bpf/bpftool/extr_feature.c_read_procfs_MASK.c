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
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char**,int) ; 

__attribute__((used)) static int FUNC5(const char *path)
{
	char *endptr, *line = NULL;
	size_t len = 0;
	FILE *fd;
	int res;

	fd = FUNC1(path, "r");
	if (!fd)
		return -1;

	res = FUNC3(&line, &len, fd);
	FUNC0(fd);
	if (res < 0)
		return -1;

	errno = 0;
	res = FUNC4(line, &endptr, 10);
	if (errno || *line == '\0' || *endptr != '\n')
		res = -1;
	FUNC2(line);

	return res;
}