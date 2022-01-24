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
 int MODE_CLASS ; 
 int MODE_CTYPE ; 
 int MODE_FUNC ; 
 int MODE_PREFIX ; 
 int MODE_TYPE ; 
 int /*<<< orphan*/ * base_types ; 
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char*,int,char*,...) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(const char *str, const char *end, char *buf, int maxlen, int mode)
{
	int rlen = 0;
	int array = 0;
	int narg = 0;
	const char *q;

	if (!end)
		end = str + FUNC2(str);

	for (q = str; q != end; q++) {

		if (rlen == (maxlen - 1))
			break;

		switch (*q) {
		case 'L':
			if (mode == MODE_PREFIX || mode == MODE_CTYPE) {
				if (mode == MODE_CTYPE) {
					if (narg)
						rlen += FUNC1(buf + rlen, maxlen - rlen, ", ");
					narg++;
				}
				rlen += FUNC1(buf + rlen, maxlen - rlen, "class ");
				if (mode == MODE_PREFIX)
					mode = MODE_CLASS;
			} else
				buf[rlen++] = *q;
			break;
		case 'B':
		case 'C':
		case 'D':
		case 'F':
		case 'I':
		case 'J':
		case 'S':
		case 'Z':
			if (mode == MODE_TYPE) {
				if (narg)
					rlen += FUNC1(buf + rlen, maxlen - rlen, ", ");
				rlen += FUNC1(buf + rlen, maxlen - rlen, "%s", base_types[*q - 'A']);
				while (array--)
					rlen += FUNC1(buf + rlen, maxlen - rlen, "[]");
				array = 0;
				narg++;
			} else
				buf[rlen++] = *q;
			break;
		case 'V':
			if (mode == MODE_TYPE) {
				rlen += FUNC1(buf + rlen, maxlen - rlen, "void");
				while (array--)
					rlen += FUNC1(buf + rlen, maxlen - rlen, "[]");
				array = 0;
			} else
				buf[rlen++] = *q;
			break;
		case '[':
			if (mode != MODE_TYPE)
				goto error;
			array++;
			break;
		case '(':
			if (mode != MODE_FUNC)
				goto error;
			buf[rlen++] = *q;
			mode = MODE_TYPE;
			break;
		case ')':
			if (mode != MODE_TYPE)
				goto error;
			buf[rlen++] = *q;
			narg = 0;
			break;
		case ';':
			if (mode != MODE_CLASS && mode != MODE_CTYPE)
				goto error;
			/* safe because at least one other char to process */
			if (FUNC0(*(q + 1)))
				rlen += FUNC1(buf + rlen, maxlen - rlen, ".");
			if (mode == MODE_CLASS)
				mode = MODE_FUNC;
			else if (mode == MODE_CTYPE)
				mode = MODE_TYPE;
			break;
		case '/':
			if (mode != MODE_CLASS && mode != MODE_CTYPE)
				goto error;
			rlen += FUNC1(buf + rlen, maxlen - rlen, ".");
			break;
		default :
			buf[rlen++] = *q;
		}
	}
	buf[rlen] = '\0';
	return buf;
error:
	return NULL;
}