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
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(const char **attr, char **str, bool use_group)
{
	int off = 0;
	int i;
	int len = 0;
	char *s;

	for (i = 0; attr[i]; i++) {
		if (FUNC1("cpu", attr[i])) {
			len += FUNC3(attr[i]) + 1;
			attr[i - off] = attr[i];
		} else
			off++;
	}
	attr[i - off] = NULL;

	*str = FUNC0(len + 1 + 2);
	if (!*str)
		return -1;
	s = *str;
	if (i - off == 0) {
		*s = 0;
		return 0;
	}
	if (use_group)
		*s++ = '{';
	for (i = 0; attr[i]; i++) {
		FUNC2(s, attr[i]);
		s += FUNC3(s);
		*s++ = ',';
	}
	if (use_group) {
		s[-1] = '}';
		*s = 0;
	} else
		s[-1] = 0;
	return 0;
}