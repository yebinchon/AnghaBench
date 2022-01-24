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
 char* FUNC0 (char const**,int,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 char* FUNC5 (int) ; 
 char* FUNC6 (char*,size_t) ; 

__attribute__((used)) static char *FUNC7(const char **str, bool (*is_end)(char c),
			     int argc, char *argv[])
{
	const char *in, *p;
	char *expansion, *out;
	size_t in_len, out_len;

	out = FUNC5(1);
	*out = 0;
	out_len = 1;

	p = in = *str;

	while (1) {
		if (*p == '$') {
			in_len = p - in;
			p++;
			expansion = FUNC0(&p, argc, argv);
			out_len += in_len + FUNC3(expansion);
			out = FUNC6(out, out_len);
			FUNC4(out, in, in_len);
			FUNC2(out, expansion);
			FUNC1(expansion);
			in = p;
			continue;
		}

		if (is_end(*p))
			break;

		p++;
	}

	in_len = p - in;
	out_len += in_len;
	out = FUNC6(out, out_len);
	FUNC4(out, in, in_len);

	/* Advance 'str' to the end character */
	*str = p;

	return out;
}