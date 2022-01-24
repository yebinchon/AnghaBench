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
 int JAVA_DEMANGLE_NORET ; 
 int /*<<< orphan*/  MODE_PREFIX ; 
 int /*<<< orphan*/  MODE_TYPE ; 
 char* FUNC0 (char const*,char*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char) ; 

char *
FUNC5(const char *str, int flags)
{
	char *buf, *ptr;
	char *p;
	size_t len, l1 = 0;

	if (!str)
		return NULL;

	/* find start of retunr type */
	p = FUNC4(str, ')');
	if (!p)
		return NULL;

	/*
	 * expansion factor estimated to 3x
	 */
	len = FUNC3(str) * 3 + 1;
	buf = FUNC2(len);
	if (!buf)
		return NULL;

	buf[0] = '\0';
	if (!(flags & JAVA_DEMANGLE_NORET)) {
		/*
		 * get return type first
		 */
		ptr = FUNC0(p + 1, NULL, buf, len, MODE_TYPE);
		if (!ptr)
			goto error;

		/* add space between return type and function prototype */
		l1 = FUNC3(buf);
		buf[l1++] = ' ';
	}

	/* process function up to return type */
	ptr = FUNC0(str, p + 1, buf + l1, len - l1, MODE_PREFIX);
	if (!ptr)
		goto error;

	return buf;
error:
	FUNC1(buf);
	return NULL;
}