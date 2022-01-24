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
 int FUNC0 (void*,char const*) ; 
 char* FUNC1 (char*,int,char const*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(void *fdt, const char *s, int *allocated)
{
	char *strtab = (char *)fdt + FUNC3(fdt);
	int strtabsize = FUNC2(fdt);
	const char *p;

	*allocated = 0;

	p = FUNC1(strtab - strtabsize, strtabsize, s);
	if (p)
		return p - strtab;

	*allocated = 1;

	return FUNC0(fdt, s);
}