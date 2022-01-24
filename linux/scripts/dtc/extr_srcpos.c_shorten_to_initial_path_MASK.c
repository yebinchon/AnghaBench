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
 char* initial_path ; 
 int initial_pathlen ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static char *FUNC3(char *fname)
{
	char *p1, *p2, *prevslash1 = NULL;
	int slashes = 0;

	for (p1 = fname, p2 = initial_path; *p1 && *p2; p1++, p2++) {
		if (*p1 != *p2)
			break;
		if (*p1 == '/') {
			prevslash1 = p1;
			slashes++;
		}
	}
	p1 = prevslash1 + 1;
	if (prevslash1) {
		int diff = initial_pathlen - slashes, i, j;
		int restlen = FUNC1(fname) - (p1 - fname);
		char *res;

		res = FUNC2((3 * diff) + restlen + 1);
		for (i = 0, j = 0; i != diff; i++) {
			res[j++] = '.';
			res[j++] = '.';
			res[j++] = '/';
		}
		FUNC0(res + j, p1);
		return res;
	}
	return NULL;
}