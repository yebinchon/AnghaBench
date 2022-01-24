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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (char const*,int) ; 

__attribute__((used)) static void FUNC4(const char *data, int len)
{
	int i;
	const char *p = data;

	/* no data, don't print */
	if (len == 0)
		return;

	if (FUNC3(data, len)) {
		FUNC2(" = \"%s\"", (const char *)data);
	} else if ((len % 4) == 0) {
		FUNC2(" = <");
		for (i = 0; i < len; i += 4)
			FUNC2("0x%08x%s", FUNC1(FUNC0(p)),
			       i < (len - 4) ? " " : "");
		FUNC2(">");
	} else {
		FUNC2(" = [");
		for (i = 0; i < len; i++)
			FUNC2("%02x%s", *p++, i < len - 1 ? " " : "");
		FUNC2("]");
	}
}