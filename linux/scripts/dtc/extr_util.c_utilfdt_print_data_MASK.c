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
typedef  int /*<<< orphan*/  fdt32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 

void FUNC4(const char *data, int len)
{
	int i;
	const char *s;

	/* no data, don't print */
	if (len == 0)
		return;

	if (FUNC3(data, len)) {
		FUNC1(" = ");

		s = data;
		do {
			FUNC1("\"%s\"", s);
			s += FUNC2(s) + 1;
			if (s < data + len)
				FUNC1(", ");
		} while (s < data + len);

	} else if ((len % 4) == 0) {
		const fdt32_t *cell = (const fdt32_t *)data;

		FUNC1(" = <");
		for (i = 0, len /= 4; i < len; i++)
			FUNC1("0x%08x%s", FUNC0(cell[i]),
			       i < (len - 1) ? " " : "");
		FUNC1(">");
	} else {
		const unsigned char *p = (const unsigned char *)data;
		FUNC1(" = [");
		for (i = 0; i < len; i++)
			FUNC1("%02x%s", *p++, i < len - 1 ? " " : "");
		FUNC1("]");
	}
}