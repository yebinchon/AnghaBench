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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static const char *FUNC3(const char *s, const char **e)
{
	const char *p;

	s = FUNC2(s);

	if (*s == '\0') {
		p = s;
		goto end;
	}

	p = s + 1;
	if (!FUNC0(*s)) {
		/* End search */
retry:
		while (*p && !FUNC0(*p) && !FUNC1(*p))
			p++;
		/* Escape and special case: '!' is also used in glob pattern */
		if (*(p - 1) == '\\' || (*p == '!' && *(p - 1) == '[')) {
			p++;
			goto retry;
		}
	}
end:
	*e = p;
	return s;
}