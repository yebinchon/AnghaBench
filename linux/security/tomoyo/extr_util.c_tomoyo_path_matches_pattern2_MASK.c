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
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const*,char const*) ; 

__attribute__((used)) static bool FUNC3(const char *f, const char *p)
{
	const char *f_delimiter;
	const char *p_delimiter;

	while (*f && *p) {
		f_delimiter = FUNC0(f, '/');
		if (!f_delimiter)
			f_delimiter = f + FUNC1(f);
		p_delimiter = FUNC0(p, '/');
		if (!p_delimiter)
			p_delimiter = p + FUNC1(p);
		if (*p == '\\' && *(p + 1) == '{')
			goto recursive;
		if (!FUNC2(f, f_delimiter, p,
						 p_delimiter))
			return false;
		f = f_delimiter;
		if (*f)
			f++;
		p = p_delimiter;
		if (*p)
			p++;
	}
	/* Ignore trailing "\*" and "\@" in @pattern. */
	while (*p == '\\' &&
	       (*(p + 1) == '*' || *(p + 1) == '@'))
		p += 2;
	return !*f && !*p;
 recursive:
	/*
	 * The "\{" pattern is permitted only after '/' character.
	 * This guarantees that below "*(p - 1)" is safe.
	 * Also, the "\}" pattern is permitted only before '/' character
	 * so that "\{" + "\}" pair will not break the "\-" operator.
	 */
	if (*(p - 1) != '/' || p_delimiter <= p + 3 || *p_delimiter != '/' ||
	    *(p_delimiter - 1) != '}' || *(p_delimiter - 2) != '\\')
		return false; /* Bad pattern. */
	do {
		/* Compare current component with pattern. */
		if (!FUNC2(f, f_delimiter, p + 2,
						 p_delimiter - 2))
			break;
		/* Proceed to next component. */
		f = f_delimiter;
		if (!*f)
			break;
		f++;
		/* Continue comparison. */
		if (FUNC3(f, p_delimiter + 1))
			return true;
		f_delimiter = FUNC0(f, '/');
	} while (f_delimiter);
	return false; /* Not matched. */
}