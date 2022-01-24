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
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(void *fdt, const char *s)
{
	char *strtab = (char *)fdt + FUNC4(fdt);
	int strtabsize = FUNC2(fdt);
	int len = FUNC6(s) + 1;
	int struct_top, offset;

	offset = -strtabsize - len;
	struct_top = FUNC0(fdt) + FUNC3(fdt);
	if (FUNC4(fdt) + offset < struct_top)
		return 0; /* no more room :( */

	FUNC5(strtab + offset, s, len);
	FUNC1(fdt, strtabsize + len);
	return offset;
}