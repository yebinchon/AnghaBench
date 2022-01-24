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
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  __fallthrough ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char const*,char**,int) ; 

s64 FUNC4(const char *str)
{
	s64 length;
	char *p;
	char c;

	if (!FUNC0(str[0]))
		goto out_err;

	length = FUNC3(str, &p, 10);
	switch (c = *p++) {
		case 'b': case 'B':
			if (*p)
				goto out_err;

			__fallthrough;
		case '\0':
			return length;
		default:
			goto out_err;
		/* two-letter suffices */
		case 'k': case 'K':
			length <<= 10;
			break;
		case 'm': case 'M':
			length <<= 20;
			break;
		case 'g': case 'G':
			length <<= 30;
			break;
		case 't': case 'T':
			length <<= 40;
			break;
	}
	/* we want the cases to match */
	if (FUNC1(c)) {
		if (FUNC2(p, "b") != 0)
			goto out_err;
	} else {
		if (FUNC2(p, "B") != 0)
			goto out_err;
	}
	return length;

out_err:
	return -1;
}