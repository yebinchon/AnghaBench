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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static char *FUNC3(const char *path)
{
	const char *slash = FUNC1(path, '/');

	if (slash) {
		int len = slash - path;
		char *dir = FUNC2(len + 1);

		FUNC0(dir, path, len);
		dir[len] = '\0';
		return dir;
	}
	return NULL;
}