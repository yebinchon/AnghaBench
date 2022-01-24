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
 char* FUNC0 (char*,int,char const*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(void *fdt, const char *s, int *allocated)
{
	char *strtab = (char *)fdt + FUNC1(fdt);
	const char *p;
	char *new;
	int len = FUNC5(s) + 1;
	int err;

	*allocated = 0;

	p = FUNC0(strtab, FUNC2(fdt), s);
	if (p)
		/* found it */
		return (p - strtab);

	new = strtab + FUNC2(fdt);
	err = FUNC3(fdt, len);
	if (err)
		return err;

	*allocated = 1;

	FUNC4(new, s, len);
	return (new - strtab);
}