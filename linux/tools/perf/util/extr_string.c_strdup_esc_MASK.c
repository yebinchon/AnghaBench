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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char const*) ; 
 int FUNC3 (char*) ; 

char *FUNC4(const char *str)
{
	char *s, *d, *p, *ret = FUNC2(str);

	if (!ret)
		return NULL;

	d = FUNC1(ret, '\\');
	if (!d)
		return ret;

	s = d + 1;
	do {
		if (*s == '\0') {
			*d = '\0';
			break;
		}
		p = FUNC1(s + 1, '\\');
		if (p) {
			FUNC0(d, s, p - s);
			d += p - s;
			s = p + 1;
		} else
			FUNC0(d, s, FUNC3(s) + 1);
	} while (p);

	return ret;
}