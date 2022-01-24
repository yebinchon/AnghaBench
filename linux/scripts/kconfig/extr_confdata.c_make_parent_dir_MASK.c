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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static int FUNC5(const char *path)
{
	char tmp[PATH_MAX + 1];
	char *p;

	FUNC3(tmp, path, sizeof(tmp));
	tmp[sizeof(tmp) - 1] = 0;

	/* Remove the base name. Just return if nothing is left */
	p = FUNC4(tmp, '/');
	if (!p)
		return 0;
	*(p + 1) = 0;

	/* Just in case it is an absolute path */
	p = tmp;
	while (*p == '/')
		p++;

	while ((p = FUNC2(p, '/'))) {
		*p = 0;

		/* skip if the directory exists */
		if (!FUNC0(tmp) && FUNC1(tmp, 0755))
			return -1;

		*p = '/';
		while (*p == '/')
			p++;
	}

	return 0;
}