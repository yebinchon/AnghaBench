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
 int FUNC1 (char const*) ; 
 char* FUNC2 (int) ; 

char *FUNC3(const char *path, const char *name)
{
	int lenp = FUNC1(path);
	int lenn = FUNC1(name);
	int len;
	int needslash = 1;
	char *str;

	len = lenp + lenn + 2;
	if ((lenp > 0) && (path[lenp-1] == '/')) {
		needslash = 0;
		len--;
	}

	str = FUNC2(len);
	FUNC0(str, path, lenp);
	if (needslash) {
		str[lenp] = '/';
		lenp++;
	}
	FUNC0(str+lenp, name, lenn+1);
	return str;
}